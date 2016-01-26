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

@objc protocol ThemeAlphaProtocol                         { optional var theme_alpha: ThemeNumberPicker? { get set } }
@objc protocol ThemeBackgroundColorProtocol               { optional var theme_backgroundColor: ThemeColorPicker? { get set } }
@objc protocol ThemeTintColorProtocol                     { optional var theme_tintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeBarTintColorProtocol                  { optional var theme_barTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeTextColorProtocol                     { optional var theme_textColor: ThemeColorPicker? { get set } }
@objc protocol ThemeHighlightedTextColorProtocol          { optional var theme_highlightedTextColor: ThemeColorPicker? { get set } }
@objc protocol ThemeShadowColorProtocol                   { optional var theme_shadowColor: ThemeColorPicker? { get set } }
@objc protocol ThemeSeparatorColorProtocol                { optional var theme_separatorColor: ThemeColorPicker? { get set } }
@objc protocol ThemeOnTintColorProtocol                   { optional var theme_onTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeThumbTintColorProtocol                { optional var theme_thumbTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeMinimumTrackTintColorProtocol         { optional var theme_minimumTrackTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeMaximumTrackTintColorProtocol         { optional var theme_maximumTrackTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeProgressTintColorProtocol             { optional var theme_progressTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeTrackTintColorProtocol                { optional var theme_trackTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemePageIndicatorTintColorProtocol        { optional var theme_pageIndicatorTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeCurrentPageIndicatorTintColorProtocol { optional var theme_currentPageIndicatorTintColor: ThemeColorPicker? { get set } }
@objc protocol ThemeImageProtocol                         { optional var theme_image: ThemeImagePicker? { get set } }

@objc protocol ThemeImageWithStateProtocol                { optional func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState) }
@objc protocol ThemeBackgroundImageWithStateProtocol      { optional func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState) }
@objc protocol ThemeTitleColorWithStateProtocol           { optional func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState) }

extension ThemeAlphaProtocol where Self: UIView {
    var theme_alpha: ThemeNumberPicker? {
        get { return getThemeFloatPicker(self, "setAlpha:") }
        set { setThemePicker(self, "setAlpha:", newValue, nil)}
    }
}
extension ThemeBackgroundColorProtocol where Self: UIView {
    var theme_backgroundColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setBackgroundColor:") }
        set { setThemePicker(self, "setBackgroundColor:", newValue, nil) }
    }
}
extension ThemeTintColorProtocol where Self: UIView {
    var theme_tintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setTintColor:") }
        set { setThemePicker(self, "setTintColor:", newValue, nil) }
    }
}
extension ThemeBarTintColorProtocol where Self: UIView {
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setBarTintColor:") }
        set { setThemePicker(self, "setBarTintColor:", newValue, nil) }
    }
}
extension ThemeTextColorProtocol where Self: UIView {
    var theme_textColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setTextColor:") }
        set { setThemePicker(self, "setTextColor:", newValue, nil) }
    }
}
extension ThemeHighlightedTextColorProtocol where Self: UIView {
    var theme_highlightedTextColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setHighlightedTextColor:") }
        set { setThemePicker(self, "setHighlightedTextColor:", newValue, nil) }
    }
}
extension ThemeShadowColorProtocol where Self: UIView {
    var theme_shadowColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setShadowColor:") }
        set { setThemePicker(self, "setShadowColor:", newValue, nil) }
    }
}
extension ThemeSeparatorColorProtocol where Self: UIView {
    var theme_separatorColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setSeparatorColor:") }
        set { setThemePicker(self, "setSeparatorColor:", newValue, nil) }
    }
}
extension ThemeOnTintColorProtocol where Self: UIView {
    var theme_onTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setOnTintColor:") }
        set { setThemePicker(self, "setOnTintColor:", newValue, nil) }
    }
}
extension ThemeThumbTintColorProtocol where Self: UIView {
    var theme_thumbTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setThumbTintColor:") }
        set { setThemePicker(self, "setThumbTintColor:", newValue, nil) }
    }
}
extension ThemeMinimumTrackTintColorProtocol where Self: UIView {
    var theme_minimumTrackTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setMinimumTrackTintColor:") }
        set { setThemePicker(self, "setMinimumTrackTintColor:", newValue, nil) }
    }
}
extension ThemeMaximumTrackTintColorProtocol where Self: UIView {
    var theme_maximumTrackTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setMaximumTrackTintColor:") }
        set { setThemePicker(self, "setMaximumTrackTintColor:", newValue, nil) }
    }
}
extension ThemeProgressTintColorProtocol where Self: UIView {
    var theme_progressTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setProgressTintColor:") }
        set { setThemePicker(self, "setProgressTintColor:", newValue, nil) }
    }
}
extension ThemeTrackTintColorProtocol where Self: UIView {
    var theme_trackTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setTrackTintColor:") }
        set { setThemePicker(self, "setTrackTintColor:", newValue, nil) }
    }
}
extension ThemePageIndicatorTintColorProtocol where Self: UIView {
    var theme_pageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setPageIndicatorTintColor:") }
        set { setThemePicker(self, "setPageIndicatorTintColor:", newValue, nil) }
    }
}
extension ThemeCurrentPageIndicatorTintColorProtocol where Self: UIView {
    var theme_currentPageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemeColorPicker(self, "setCurrentPageIndicatorTintColor:") }
        set { setThemePicker(self, "setCurrentPageIndicatorTintColor:", newValue, nil) }
    }
}
extension ThemeImageProtocol where Self: UIView {
    var theme_image: ThemeImagePicker? {
        get { return getThemeImagePicker(self, "setImage:") }
        set { setThemePicker(self, "setImage:", newValue, nil) }
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

private func getThemeColorPicker(view: UIView, _ selector : String) -> ThemeColorPicker? { return getThemePicker(view, selector) as? ThemeColorPicker }
private func getThemeImagePicker(view: UIView, _ selector : String) -> ThemeImagePicker? { return getThemePicker(view, selector) as? ThemeImagePicker }
private func getThemeFloatPicker(view: UIView, _ selector : String) -> ThemeNumberPicker? { return getThemePicker(view, selector) as? ThemeNumberPicker }
private func getThemePicker(view: UIView, _ selector : String) -> ThemePicker? { return view.themePickers[selector] }

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
