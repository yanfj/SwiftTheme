//
//  UIKit+Theme.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/22.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

extension UIView:
    ThemeAlphaProtocol,
    ThemeBackgroundColorProtocol,
    ThemeTintColorProtocol
{}
extension UILabel:
    ThemeTextColorProtocol,
    ThemeShadowColorProtocol,
    ThemeHighlightedTextColorProtocol
{}
extension UINavigationBar:
    ThemeBarTintColorProtocol
{}
extension UITabBar:
    ThemeBarTintColorProtocol
{}
extension UITableView:
    ThemeSeparatorColorProtocol
{}
extension UITextField:
    ThemeTextColorProtocol
{}
extension UITextView:
    ThemeTextColorProtocol
{}
extension UIToolbar:
    ThemeBarTintColorProtocol
{}
extension UISwitch:
    ThemeOnTintColorProtocol,
    ThemeThumbTintColorProtocol
{}
extension UISlider:
    ThemeThumbTintColorProtocol,
    ThemeMinimumTrackTintColorProtocol,
    ThemeMaximumTrackTintColorProtocol
{}
extension UISearchBar:
    ThemeBarTintColorProtocol
{}
extension UIProgressView:
    ThemeProgressTintColorProtocol,
    ThemeTrackTintColorProtocol
{}
extension UIPageControl:
    ThemePageIndicatorTintColorProtocol,
    ThemeCurrentPageIndicatorTintColorProtocol
{}
extension UIImageView:
    ThemeImageProtocol
{}
extension UIButton:
    ThemeImageWithStateProtocol,
    ThemeBackgroundImageWithStateProtocol,
    ThemeTitleColorWithStateProtocol
{}

@objc protocol ThemeAlphaProtocol                         { optional func theme_setAlpha(picker: ThemeNumberPicker) }
@objc protocol ThemeBackgroundColorProtocol               { optional func theme_setBackgroundColor(picker: ThemeColorPicker) }
@objc protocol ThemeTintColorProtocol                     { optional func theme_setTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeBarTintColorProtocol                  { optional func theme_setBarTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeTextColorProtocol                     { optional func theme_setTextColor(picker: ThemeColorPicker) }
@objc protocol ThemeHighlightedTextColorProtocol          { optional func theme_setHighlightedTextColor(picker: ThemeColorPicker) }
@objc protocol ThemeShadowColorProtocol                   { optional func theme_setShadowColor(picker: ThemeColorPicker) }
@objc protocol ThemeSeparatorColorProtocol                { optional func theme_setSeparatorColor(picker: ThemeColorPicker) }
@objc protocol ThemeOnTintColorProtocol                   { optional func theme_setOnTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeThumbTintColorProtocol                { optional func theme_setThumbTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeMinimumTrackTintColorProtocol         { optional func theme_setMinimumTrackTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeMaximumTrackTintColorProtocol         { optional func theme_setMaximumTrackTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeProgressTintColorProtocol             { optional func theme_setProgressTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeTrackTintColorProtocol                { optional func theme_setTrackTintColor(picker: ThemeColorPicker) }
@objc protocol ThemePageIndicatorTintColorProtocol        { optional func theme_setPageIndicatorTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeCurrentPageIndicatorTintColorProtocol { optional func theme_setCurrentPageIndicatorTintColor(picker: ThemeColorPicker) }
@objc protocol ThemeImageProtocol                         { optional func theme_setImage(picker: ThemeImagePicker) }
@objc protocol ThemeImageWithStateProtocol                { optional func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState) }
@objc protocol ThemeBackgroundImageWithStateProtocol      { optional func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState) }
@objc protocol ThemeTitleColorWithStateProtocol           { optional func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState) }

extension ThemeAlphaProtocol where Self: UIView {
    func theme_setAlpha(picker: ThemeNumberPicker) {
        setThemePicker(self, "setAlpha:", picker, nil)
    }
}
extension ThemeBackgroundColorProtocol where Self: UIView {
    func theme_setBackgroundColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBackgroundColor:", picker, nil)
    }
}
extension ThemeTintColorProtocol where Self: UIView {
    func theme_setTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTintColor:", picker, nil)
    }
}
extension ThemeBarTintColorProtocol where Self: UIView {
    func theme_setBarTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBarTintColor:", picker, nil)
    }
}
extension ThemeTextColorProtocol where Self: UIView {
    func theme_setTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTextColor:", picker, nil)
    }
}
extension ThemeHighlightedTextColorProtocol where Self: UIView {
    func theme_setHighlightedTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setHighlightedTextColor:", picker, nil)
    }
}
extension ThemeShadowColorProtocol where Self: UIView {
    func theme_setShadowColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setShadowColor:", picker, nil)
    }
}
extension ThemeSeparatorColorProtocol where Self: UIView {
    func theme_setSeparatorColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setSeparatorColor:", picker, nil)
    }
}
extension ThemeOnTintColorProtocol where Self: UIView {
    func theme_setOnTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setOnTintColor:", picker, nil)
    }
}
extension ThemeThumbTintColorProtocol where Self: UIView {
    func theme_setThumbTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setThumbTintColor:", picker, nil)
    }
}
extension ThemeMinimumTrackTintColorProtocol where Self: UIView {
    func theme_setMinimumTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setMinimumTrackTintColor:", picker, nil)
    }
}
extension ThemeMaximumTrackTintColorProtocol where Self: UIView {
    func theme_setMaximumTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setMaximumTrackTintColor:", picker, nil)
    }
}
extension ThemeProgressTintColorProtocol where Self: UIView {
    func theme_setProgressTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setProgressTintColor:", picker, nil)
    }
}
extension ThemeTrackTintColorProtocol where Self: UIView {
    func theme_setTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTrackTintColor:", picker, nil)
    }
}
extension ThemePageIndicatorTintColorProtocol where Self: UIView {
    func theme_setPageIndicatorTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setPageIndicatorTintColor:", picker, nil)
    }
}
extension ThemeCurrentPageIndicatorTintColorProtocol where Self: UIView {
    func theme_setCurrentPageIndicatorTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setCurrentPageIndicatorTintColor:", picker, nil)
    }
}
extension ThemeImageProtocol where Self: UIView {
    func theme_setImage(picker: ThemeImagePicker) {
        setThemePicker(self, "setImage:", picker, nil)
    }
}
extension ThemeImageWithStateProtocol where Self: UIView {
    func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState) {
        setThemePicker(self, "setImage:forState:", picker, state)
    }
}
extension ThemeBackgroundImageWithStateProtocol where Self: UIView {
    func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState) {
        setThemePicker(self, "setBackgroundImage:forState:", picker, state)
    }
}
extension ThemeTitleColorWithStateProtocol where Self: UIView {
    func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState) {
        setThemePicker(self, "setTitleColor:forState:", picker, state)
    }
}

private func setThemePicker(
      view : UIView,
    _ selector : String,
var _ picker : ThemePicker?,
    _ state: UIControlState?
) {
    if let state = state {
        if let statePicker = view.themePickers[selector] as? ThemeStatePicker {
            picker = statePicker.setPicker(picker!, forState: state)
        } else {
            picker = ThemeStatePicker(picker: picker!, withState: state)
        }
    }
    
    view.themePickers[selector] = picker
    view.performThemePicker(selector, picker: picker)
}
