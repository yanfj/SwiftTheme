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
        set { setThemePicker(self, "setAlpha:", newValue) }
    }
    var theme_backgroundColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBackgroundColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBackgroundColor:", newValue) }
    }
    var theme_tintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTintColor:", newValue) }
    }
}
extension UIApplication
{
    func theme_setStatusBarStyle(picker: ThemeStatusBarStylePicker, animated: Bool) {
        picker.animated = animated
        setThemePicker(self, "setStatusBarStyle:animated:", picker)
    }
}
extension UIBarButtonItem
{
    var theme_tintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTintColor:", newValue) }
    }
}
extension UILabel
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue) }
    }
    var theme_highlightedTextColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setHighlightedTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setHighlightedTextColor:", newValue) }
    }
    var theme_shadowColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setShadowColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setShadowColor:", newValue) }
    }
}
extension UINavigationBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue) }
    }
    var theme_titleTextAttributes: ThemeDictionaryPicker? {
        get { return getThemePicker(self, "setTitleTextAttributes:") as? ThemeDictionaryPicker }
        set { setThemePicker(self, "setTitleTextAttributes:", newValue) }
    }
}
extension UITabBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
extension UITableView
{
    var theme_separatorColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setSeparatorColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setSeparatorColor:", newValue) }
    }
}
extension UITextField
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue) }
    }
}
extension UITextView
{
    var theme_textColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTextColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTextColor:", newValue) }
    }
}
extension UIToolbar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
extension UISwitch
{
    var theme_onTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setOnTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setOnTintColor:", newValue) }
    }
    var theme_thumbTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setThumbTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setThumbTintColor:", newValue) }
    }
}
extension UISlider
{
    var theme_thumbTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setThumbTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setThumbTintColor:", newValue) }
    }
    var theme_minimumTrackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setMinimumTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setMinimumTrackTintColor:", newValue) }
    }
    var theme_maximumTrackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setMaximumTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setMaximumTrackTintColor:", newValue) }
    }
}
extension UISearchBar
{
    var theme_barTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setBarTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
extension UIProgressView
{
    var theme_progressTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setProgressTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setProgressTintColor:", newValue) }
    }
    var theme_trackTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setTrackTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setTrackTintColor:", newValue) }
    }
}
extension UIPageControl
{
    var theme_pageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setPageIndicatorTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setPageIndicatorTintColor:", newValue) }
    }
    var theme_currentPageIndicatorTintColor: ThemeColorPicker? {
        get { return getThemePicker(self, "setCurrentPageIndicatorTintColor:") as? ThemeColorPicker }
        set { setThemePicker(self, "setCurrentPageIndicatorTintColor:", newValue) }
    }
}
extension UIImageView
{
    var theme_image: ThemeImagePicker? {
        get { return getThemePicker(self, "setImage:") as? ThemeImagePicker }
        set { setThemePicker(self, "setImage:", newValue) }
    }
}
extension UIButton
{
    func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState) {
        let statePicker = makeStatePicker(self, "setImage:forState:", picker, state)
        setThemePicker(self, "setImage:forState:", statePicker)
    }
    func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState) {
        let statePicker = makeStatePicker(self, "setBackgroundImage:forState:", picker, state)
        setThemePicker(self, "setBackgroundImage:forState:", statePicker)
    }
    func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState) {
        let statePicker = makeStatePicker(self, "setTitleColor:forState:", picker, state)
        setThemePicker(self, "setTitleColor:forState:", statePicker)
    }
}
extension CALayer
{
    var theme_borderColor: ThemeCGColorPicker? {
        get { return getThemePicker(self, "setBorderColor:") as? ThemeCGColorPicker }
        set { setThemePicker(self, "setBorderColor:", newValue) }
    }
    var theme_shadowColor: ThemeCGColorPicker? {
        get { return getThemePicker(self, "setShadowColor:") as? ThemeCGColorPicker }
        set { setThemePicker(self, "setShadowColor:", newValue) }
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
    _ picker : ThemePicker?
) {
    object.themePickers[selector] = picker
    object.performThemePicker(selector, picker: picker)
}

private func makeStatePicker(
      object : NSObject,
    _ selector : String,
var _ picker : ThemePicker?,
    _ state : UIControlState
) -> ThemePicker? {
    guard picker != nil else {
        return nil
    }
    
    if let statePicker = object.themePickers[selector] as? ThemeStatePicker {
        picker = statePicker.setPicker(picker!, forState: state)
    } else {
        picker = ThemeStatePicker(picker: picker!, withState: state)
    }
    return picker
}
