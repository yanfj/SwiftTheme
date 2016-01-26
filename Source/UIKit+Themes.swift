//
//  UIKit+Themes.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/22.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

extension UIView {
    
    public typealias ThemePickers = [String: ThemePicker]
    
    public var themePickers: ThemePickers {
        get {
            if let themePickers = objc_getAssociatedObject(self, &themesPickersKey) as? ThemePickers {
                return themePickers
            }
            let initValue = ThemePickers()
            objc_setAssociatedObject(self, &themesPickersKey, initValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return initValue
        }
        set {
            objc_setAssociatedObject(self, &themesPickersKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            removeThemeNotification()
            if newValue.isEmpty == false { setupThemeNotification() }
        }
    }
    
    func performThemePicker(selector: String, picker: ThemePicker?) {
        let sel = Selector(selector)
        guard respondsToSelector(sel)     else { return }
        guard let value = picker?.value() else { return }
        
        if picker is ThemeNumberPicker {
            let methodSignature = self.methodForSelector(sel)
            let setFloat = unsafeBitCast(methodSignature, setCGFloatValueIMP.self)
            setFloat(self, sel, CGFloat(value as! NSNumber))
            return
        }
        
        if let statePicker = picker as? ThemeStatePicker {
            let methodSignature = self.methodForSelector(sel)
            let setState = unsafeBitCast(methodSignature, setValueForStateIMP.self)
            statePicker.values.forEach { setState(self, sel, $1.value()!, UIControlState(rawValue: $0)) }
            return
        }
        
        performSelector(sel, withObject: value)
    }
    
    private func setupThemeNotification() {
        if #available(iOS 9.0, *) {
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateTheme", name: ThemeUpdateNotification, object: nil)
        } else {
            NSNotificationCenter.defaultCenter().addObserverForName(ThemeUpdateNotification, object: nil, queue: nil, usingBlock: { [weak self] notification in self?.updateTheme() })
        }
    }
    
    private func removeThemeNotification() {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: ThemeUpdateNotification, object: nil)
    }
    
    @objc private func updateTheme() {
        themePickers.forEach { selector, picker in
            UIView.animateWithDuration(ThemeManager.animationDuration) {
                self.performThemePicker(selector, picker: picker)
            }
        }
    }
    
    private typealias setCGFloatValueIMP  = @convention(c) (UIView, Selector, CGFloat) -> Void
    private typealias setValueForStateIMP = @convention(c) (UIView, Selector, AnyObject, UIControlState) -> Void
    
}

private var themesPickersKey = ""