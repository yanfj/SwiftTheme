//
//  UIKit+Theme.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/22.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

extension UIView:
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

protocol ThemeBackgroundColorProtocol               { var theme_backgroundColor: ThemePicker? { get set } }
protocol ThemeTintColorProtocol                     { var theme_tintColor: ThemePicker? { get set } }
protocol ThemeBarTintColorProtocol                  { var theme_barTintColor: ThemePicker? { get set } }
protocol ThemeTextColorProtocol                     { var theme_textColor: ThemePicker? { get set } }
protocol ThemeHighlightedTextColorProtocol          { var theme_highlightedTextColor: ThemePicker? { get set } }
protocol ThemeShadowColorProtocol                   { var theme_shadowColor: ThemePicker? { get set } }
protocol ThemeSeparatorColorProtocol                { var theme_separatorColor: ThemePicker? { get set } }
protocol ThemeOnTintColorProtocol                   { var theme_onTintColor: ThemePicker? { get set } }
protocol ThemeThumbTintColorProtocol                { var theme_thumbTintColor: ThemePicker? { get set } }
protocol ThemeMinimumTrackTintColorProtocol         { var theme_minimumTrackTintColor: ThemePicker? { get set } }
protocol ThemeMaximumTrackTintColorProtocol         { var theme_maximumTrackTintColor: ThemePicker? { get set } }
protocol ThemeProgressTintColorProtocol             { var theme_progressTintColor: ThemePicker? { get set } }
protocol ThemeTrackTintColorProtocol                { var theme_trackTintColor: ThemePicker? { get set } }
protocol ThemePageIndicatorTintColorProtocol        { var theme_pageIndicatorTintColor: ThemePicker? { get set } }
protocol ThemeCurrentPageIndicatorTintColorProtocol { var theme_currentPageIndicatorTintColor: ThemePicker? { get set } }
protocol ThemeImageProtocol                         { var theme_image: ThemePicker? { get set } }
protocol ThemeImageForStateProtocol                 { func theme_setImage(theme: ThemePicker, forState: UIControlState) }
protocol ThemeBackgroundImageForStateProtocol       { func theme_setBackgroundImage(theme: ThemePicker, forState: UIControlState) }
protocol ThemeTitleColorForStateProtocol            { func theme_setTitleColor(theme: ThemePicker, forState: UIControlState) }

extension ThemeBackgroundColorProtocol where Self: UIView {
    var theme_backgroundColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.backgroundColor) }
        set { setTheme(self, key: &AssociationKey.backgroundColor, selector: "setBackgroundColor:", theme: newValue!) }
    }
}
extension ThemeTintColorProtocol where Self: UIView {
    var theme_tintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.tintColor) }
        set { setTheme(self, key: &AssociationKey.tintColor, selector: "setTintColor:", theme: newValue!) }
    }
}
extension ThemeBarTintColorProtocol where Self: UIView {
    var theme_barTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.barTintColor) }
        set { setTheme(self, key: &AssociationKey.barTintColor, selector: "setBarTintColor:", theme: newValue!) }
    }
}
extension ThemeTextColorProtocol where Self: UIView {
    var theme_textColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.textColor) }
        set { setTheme(self, key: &AssociationKey.textColor, selector: "setTextColor:", theme: newValue!) }
    }
}
extension ThemeHighlightedTextColorProtocol where Self: UIView {
    var theme_highlightedTextColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.highlightedTextColor) }
        set { setTheme(self, key: &AssociationKey.highlightedTextColor, selector: "setHighlightedTextColor:", theme: newValue!) }
    }
}
extension ThemeShadowColorProtocol where Self: UIView {
    var theme_shadowColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.shadowColor) }
        set { setTheme(self, key: &AssociationKey.shadowColor, selector: "setShadowColor:", theme: newValue!) }
    }
}
extension ThemeSeparatorColorProtocol where Self: UIView {
    var theme_separatorColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.textColor) }
        set { setTheme(self, key: &AssociationKey.textColor, selector: "setTextColor:", theme: newValue!) }
    }
}
extension ThemeOnTintColorProtocol where Self: UIView {
    var theme_onTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.onTintColor) }
        set { setTheme(self, key: &AssociationKey.onTintColor, selector: "setOnTintColor:", theme: newValue!) }
    }
}
extension ThemeThumbTintColorProtocol where Self: UIView {
    var theme_thumbTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.thumbTintColor) }
        set { setTheme(self, key: &AssociationKey.thumbTintColor, selector: "setThumbTintColor:", theme: newValue!) }
    }
}
extension ThemeMinimumTrackTintColorProtocol where Self: UIView {
    var theme_minimumTrackTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.minimumTrackTintColor) }
        set { setTheme(self, key: &AssociationKey.minimumTrackTintColor, selector: "setMinimumTrackTintColor:", theme: newValue!) }
    }
}
extension ThemeMaximumTrackTintColorProtocol where Self: UIView {
    var theme_maximumTrackTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.maximumTrackTintColor) }
        set { setTheme(self, key: &AssociationKey.maximumTrackTintColor, selector: "setMaximumTrackTintColor:", theme: newValue!) }
    }
}
extension ThemeProgressTintColorProtocol where Self: UIView {
    var theme_progressTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.progressTintColor) }
        set { setTheme(self, key: &AssociationKey.progressTintColor, selector: "setProgressTintColor:", theme: newValue!) }
    }
}
extension ThemeTrackTintColorProtocol where Self: UIView {
    var theme_trackTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.trackTintColor) }
        set { setTheme(self, key: &AssociationKey.trackTintColor, selector: "setTrackTintColor:", theme: newValue!) }
    }
}
extension ThemePageIndicatorTintColorProtocol where Self: UIView {
    var theme_pageIndicatorTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.pageIndicatorTintColor) }
        set { setTheme(self, key: &AssociationKey.pageIndicatorTintColor, selector: "setPageIndicatorTintColor:", theme: newValue!) }
    }
}
extension ThemeCurrentPageIndicatorTintColorProtocol where Self: UIView {
    var theme_currentPageIndicatorTintColor: ThemePicker? {
        get { return getTheme(self, key: &AssociationKey.currentPageIndicatorTintColor) }
        set { setTheme(self, key: &AssociationKey.currentPageIndicatorTintColor, selector: "setCurrentPageIndicatorTintColor:", theme: newValue!) }
    }
}

private func getTheme(
    view: UIView,
    key: UnsafePointer<Void>
) -> ThemePicker? {
    return objc_getAssociatedObject(view, key) as? ThemePicker
}

private func setTheme(
    view : UIView,
    key : UnsafePointer<Void>,
    selector : String,
    theme : ThemePicker
) {
    objc_setAssociatedObject(view, key, theme, .OBJC_ASSOCIATION_COPY_NONATOMIC)
    view.performSelector(Selector(selector), withObject: theme.value())
    view.themePickers[selector] = theme
}

private struct AssociationKey {
    static var backgroundColor               : UInt8 = 0
    static var tintColor                     : UInt8 = 1
    static var barTintColor                  : UInt8 = 2
    static var textColor                     : UInt8 = 3
    static var highlightedTextColor          : UInt8 = 4
    static var shadowColor                   : UInt8 = 5
    static var separatorColor                : UInt8 = 6
    static var onTintColor                   : UInt8 = 7
    static var thumbTintColor                : UInt8 = 8
    static var minimumTrackTintColor         : UInt8 = 9
    static var maximumTrackTintColor         : UInt8 = 10
    static var progressTintColor             : UInt8 = 11
    static var trackTintColor                : UInt8 = 12
    static var pageIndicatorTintColor        : UInt8 = 13
    static var currentPageIndicatorTintColor : UInt8 = 14
}