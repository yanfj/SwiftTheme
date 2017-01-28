//
//  ThemeStatusBarStylePicker.swift
//  SwiftTheme
//
//  Created by Gesen on 2017/1/28.
//  Copyright © 2017年 Gesen. All rights reserved.
//

import UIKit

public final class ThemeStatusBarStylePicker: ThemePicker {
    
    var animated = true
    
    public convenience init(keyPath: String) {
        self.init(v: { ThemeStatusBarStylePicker.statusBarStyle(stringStyle: ThemeManager.stringForKeyPath(keyPath) ?? "") })
    }
    
    public convenience init(styles: UIStatusBarStyle...) {
        self.init(v: { ThemeManager.elementForArray(styles) })
    }
    
    public required convenience init(arrayLiteral elements: UIStatusBarStyle...) {
        self.init(v: { ThemeManager.elementForArray(elements) })
    }
    
    public required convenience init(stringLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public required convenience init(unicodeScalarLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public required convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public class func pickerWithKeyPath(_ keyPath: String) -> ThemeStatusBarStylePicker {
        return ThemeStatusBarStylePicker(keyPath: keyPath)
    }
    
    public class func pickerWithStyles(_ styles: [UIStatusBarStyle]) -> ThemeStatusBarStylePicker {
        return ThemeStatusBarStylePicker(v: { ThemeManager.elementForArray(styles) })
    }
    
    public class func pickerWithStringStyles(_ styles: [String]) -> ThemeStatusBarStylePicker {
        return ThemeStatusBarStylePicker(v: { ThemeManager.elementForArray(styles.map(statusBarStyle)) })
    }
    
    class func statusBarStyle(stringStyle: String) -> UIStatusBarStyle {
        switch stringStyle {
        case "UIStatusBarStyleDefault"      : return .default
        case "UIStatusBarStyleLightContent" : return .lightContent
        default: return .default
        }
    }
    
}

extension ThemeStatusBarStylePicker: ExpressibleByArrayLiteral {}
extension ThemeStatusBarStylePicker: ExpressibleByStringLiteral {}
