//
//  UIKit+Theme.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/22.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

extension UIView
{
    var theme_alpha: ThemeCGFloatPicker? {
        get { return getThemePicker(self, "setAlpha:") as? ThemeCGFloatPicker }
        set { setThemePicker(self, "setAlpha:", newValue, nil) }
    }
    var theme_backgroundColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBackgroundColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBackgroundColor:", newValue, nil) }
    }
    var theme_tintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTintColor:", newValue, nil) }
    }
}
extension UILabel
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue, nil) }
    }
    var theme_highlightedTextColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setHighlightedTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setHighlightedTextColor:", newValue, nil) }
    }
    var theme_shadowColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setShadowColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setShadowColor:", newValue, nil) }
    }
}
extension UINavigationBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue, nil) }
    }
}
extension UITabBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue, nil) }
    }
}
extension UITableView
{
    var theme_separatorColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setSeparatorColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setSeparatorColor:", newValue, nil) }
    }
}
extension UITextField
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue, nil) }
    }
}
extension UITextView
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue, nil) }
    }
}
extension UIToolbar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue, nil) }
    }
}
extension UISwitch
{
    var theme_onTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setOnTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setOnTintColor:", newValue, nil) }
    }
    var theme_thumbTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setThumbTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setThumbTintColor:", newValue, nil) }
    }
}
extension UISlider
{
    var theme_thumbTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setThumbTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setThumbTintColor:", newValue, nil) }
    }
    var theme_minimumTrackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setMinimumTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setMinimumTrackTintColor:", newValue, nil) }
    }
    var theme_maximumTrackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setMaximumTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setMaximumTrackTintColor:", newValue, nil) }
    }
}
extension UISearchBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue, nil) }
    }
}
extension UIProgressView
{
    var theme_progressTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setProgressTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setProgressTintColor:", newValue, nil) }
    }
    var theme_trackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTrackTintColor:", newValue, nil) }
    }
}
extension UIPageControl
{
    var theme_pageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setPageIndicatorTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setPageIndicatorTintColor:", newValue, nil) }
    }
    var theme_currentPageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setCurrentPageIndicatorTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setCurrentPageIndicatorTintColor:", newValue, nil) }
    }
}
extension UIImageView
{
    var theme_image: ThemeImagePicker? {
        get { return getThemePicker(self, "setImage:") as? ThemeImagePicker }
        set { setThemePicker(self, "setImage:", newValue, nil) }
    }
}
extension UIButton
{
    func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState) {
        setThemePicker(self, "setImage:forState:", picker, state)
    }
    func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState) {
        setThemePicker(self, "setBackgroundImage:forState:", picker, state)
    }
    func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState) {
        setThemePicker(self, "setTitleColor:forState:", picker, state)
    }
}
extension CALayer
{
    var theme_borderColor: ThemeCGColorPicker? {
        get { return getThemePicker(self, "setBorderColor:") as? ThemeCGColorPicker }
        set { setThemePicker(self, "setBorderColor:", newValue, nil) }
    }
    var theme_shadowColor: ThemeCGColorPicker? {
        get { return getThemePicker(self, "setShadowColor:") as? ThemeCGColorPicker }
        set { setThemePicker(self, "setShadowColor:", newValue, nil) }
    }
}

private func getThemePicker(
    object : NSObject,
    _ selector : String
    ) -> ThemePicker? {
        return object.themePickers[selector]
}

private func setThemePicker(
    object : NSObject,
    _ selector : String,
    var _ picker : ThemePicker?,
    _ state : UIControlState?
    ) {
        guard picker != nil else {
            object.themePickers[selector] = nil
            return
        }
        
        if let state = state {
            if let statePicker = object.themePickers[selector] as? ThemeStatePicker {
                picker = statePicker.setPicker(picker!, forState: state)
            } else {
                picker = ThemeStatePicker(picker: picker!, withState: state)
            }
        }
        
        object.themePickers[selector] = picker
        object.performThemePicker(selector, picker: picker)
}
