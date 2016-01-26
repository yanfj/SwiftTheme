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
    func theme_setAlpha(picker: ThemeNumberPicker) {
        setThemePicker(self, "setAlpha:", picker, nil)
    }
    func theme_setBackgroundColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBackgroundColor:", picker, nil)
    }
    func theme_setTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTintColor:", picker, nil)
    }
}
extension UILabel
{
    func theme_setTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTextColor:", picker, nil)
    }
    func theme_setHighlightedTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setHighlightedTextColor:", picker, nil)
    }
    func theme_setShadowColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setShadowColor:", picker, nil)
    }
}
extension UINavigationBar
{
    func theme_setBarTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBarTintColor:", picker, nil)
    }
}
extension UITabBar
{
    func theme_setBarTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBarTintColor:", picker, nil)
    }
}
extension UITableView
{
    func theme_setSeparatorColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setSeparatorColor:", picker, nil)
    }
}
extension UITextField
{
    func theme_setTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTextColor:", picker, nil)
    }
}
extension UITextView
{
    func theme_setTextColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTextColor:", picker, nil)
    }
}
extension UIToolbar
{
    func theme_setBarTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBarTintColor:", picker, nil)
    }
}
extension UISwitch
{
    func theme_setOnTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setOnTintColor:", picker, nil)
    }
    func theme_setThumbTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setThumbTintColor:", picker, nil)
    }
}
extension UISlider
{
    func theme_setThumbTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setThumbTintColor:", picker, nil)
    }
    func theme_setMinimumTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setMinimumTrackTintColor:", picker, nil)
    }
    func theme_setMaximumTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setMaximumTrackTintColor:", picker, nil)
    }
}
extension UISearchBar
{
    func theme_setBarTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setBarTintColor:", picker, nil)
    }
}
extension UIProgressView
{
    func theme_setProgressTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setProgressTintColor:", picker, nil)
    }
    func theme_setTrackTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setTrackTintColor:", picker, nil)
    }
}
extension UIPageControl
{
    func theme_setPageIndicatorTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setPageIndicatorTintColor:", picker, nil)
    }
    func theme_setCurrentPageIndicatorTintColor(picker: ThemeColorPicker) {
        setThemePicker(self, "setCurrentPageIndicatorTintColor:", picker, nil)
    }
}
extension UIImageView
{
    func theme_setImage(picker: ThemeImagePicker) {
        setThemePicker(self, "setImage:", picker, nil)
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
