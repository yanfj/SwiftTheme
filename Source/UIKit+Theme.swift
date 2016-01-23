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
    ThemeTintColorProtocol,
    ThemeAlphaProtocol
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

protocol ThemeBackgroundColorProtocol               { var theme_backgroundColor: ThemePicker? { get set } }
protocol ThemeAlphaProtocol                         { var theme_alpha: ThemePicker? { get set } }
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
protocol ThemeImageWithStateProtocol                { var theme_imageWithState: ThemePicker? { get set } }
protocol ThemeBackgroundImageWithStateProtocol      { var theme_backgroundImageWithState: ThemePicker? { get set } }
protocol ThemeTitleColorWithStateProtocol           { var theme_titleColorWithState: ThemePicker? { get set } }

extension ThemeBackgroundColorProtocol where Self: UIView {
    var theme_backgroundColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.backgroundColor) }
        set { setThemePicker(self, &AssociationKey.backgroundColor, "setBackgroundColor:", newValue!) }
    }
}
extension ThemeAlphaProtocol where Self: UIView {
    var theme_alpha: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.alpha) }
        set { setThemePicker(self, &AssociationKey.alpha, "setAlpha:", newValue!)}
    }
}
extension ThemeTintColorProtocol where Self: UIView {
    var theme_tintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.tintColor) }
        set { setThemePicker(self, &AssociationKey.tintColor, "setTintColor:", newValue!) }
    }
}
extension ThemeBarTintColorProtocol where Self: UIView {
    var theme_barTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.barTintColor) }
        set { setThemePicker(self, &AssociationKey.barTintColor, "setBarTintColor:", newValue!) }
    }
}
extension ThemeTextColorProtocol where Self: UIView {
    var theme_textColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.textColor) }
        set { setThemePicker(self, &AssociationKey.textColor, "setTextColor:", newValue!) }
    }
}
extension ThemeHighlightedTextColorProtocol where Self: UIView {
    var theme_highlightedTextColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.highlightedTextColor) }
        set { setThemePicker(self, &AssociationKey.highlightedTextColor, "setHighlightedTextColor:", newValue!) }
    }
}
extension ThemeShadowColorProtocol where Self: UIView {
    var theme_shadowColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.shadowColor) }
        set { setThemePicker(self, &AssociationKey.shadowColor, "setShadowColor:", newValue!) }
    }
}
extension ThemeSeparatorColorProtocol where Self: UIView {
    var theme_separatorColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.textColor) }
        set { setThemePicker(self, &AssociationKey.textColor, "setTextColor:", newValue!) }
    }
}
extension ThemeOnTintColorProtocol where Self: UIView {
    var theme_onTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.onTintColor) }
        set { setThemePicker(self, &AssociationKey.onTintColor, "setOnTintColor:", newValue!) }
    }
}
extension ThemeThumbTintColorProtocol where Self: UIView {
    var theme_thumbTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.thumbTintColor) }
        set { setThemePicker(self, &AssociationKey.thumbTintColor, "setThumbTintColor:", newValue!) }
    }
}
extension ThemeMinimumTrackTintColorProtocol where Self: UIView {
    var theme_minimumTrackTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.minimumTrackTintColor) }
        set { setThemePicker(self, &AssociationKey.minimumTrackTintColor, "setMinimumTrackTintColor:", newValue!) }
    }
}
extension ThemeMaximumTrackTintColorProtocol where Self: UIView {
    var theme_maximumTrackTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.maximumTrackTintColor) }
        set { setThemePicker(self, &AssociationKey.maximumTrackTintColor, "setMaximumTrackTintColor:", newValue!) }
    }
}
extension ThemeProgressTintColorProtocol where Self: UIView {
    var theme_progressTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.progressTintColor) }
        set { setThemePicker(self, &AssociationKey.progressTintColor, "setProgressTintColor:", newValue!) }
    }
}
extension ThemeTrackTintColorProtocol where Self: UIView {
    var theme_trackTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.trackTintColor) }
        set { setThemePicker(self, &AssociationKey.trackTintColor, "setTrackTintColor:", newValue!) }
    }
}
extension ThemePageIndicatorTintColorProtocol where Self: UIView {
    var theme_pageIndicatorTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.pageIndicatorTintColor) }
        set { setThemePicker(self, &AssociationKey.pageIndicatorTintColor, "setPageIndicatorTintColor:", newValue!) }
    }
}
extension ThemeCurrentPageIndicatorTintColorProtocol where Self: UIView {
    var theme_currentPageIndicatorTintColor: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.currentPageIndicatorTintColor) }
        set { setThemePicker(self, &AssociationKey.currentPageIndicatorTintColor, "setCurrentPageIndicatorTintColor:", newValue!) }
    }
}
extension ThemeImageProtocol where Self: UIView {
    var theme_image: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.image) }
        set { setThemePicker(self, &AssociationKey.image, "setImage:", newValue!) }
    }
}
extension ThemeImageWithStateProtocol where Self: UIView {
    var theme_imageWithState: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.imageWithState) }
        set { setThemePicker(self, &AssociationKey.imageWithState, "setImage:forState:", newValue!) }
    }
}
extension ThemeBackgroundImageWithStateProtocol where Self: UIView {
    var theme_backgroundImageWithState: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.backgroundImageWithState) }
        set { setThemePicker(self, &AssociationKey.backgroundImageWithState, "setBackgroundImage:forState:", newValue!) }
    }
}
extension ThemeTitleColorWithStateProtocol where Self: UIView {
    var theme_titleColorWithState: ThemePicker? {
        get { return getThemePicker(self, &AssociationKey.titleColorWithState) }
        set { setThemePicker(self, &AssociationKey.titleColorWithState, "setTitleColor:forState:", newValue!) }
    }
}

private func getThemePicker(
      view: UIView,
    _ key: UnsafePointer<Void>
) -> ThemePicker? {
    return objc_getAssociatedObject(view, key) as? ThemePicker
}

private func setThemePicker(
      view : UIView,
    _ key : UnsafePointer<Void>,
    _ selector : String,
    _ themePicker : ThemePicker
) {
    objc_setAssociatedObject(view, key, themePicker, .OBJC_ASSOCIATION_COPY_NONATOMIC)
    view.performThemePicker(selector, themePicker: themePicker)
    view.themePickers[selector] = themePicker
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
    static var image                         : UInt8 = 15
    static var imageWithState                : UInt8 = 16
    static var backgroundImageWithState      : UInt8 = 17
    static var titleColorWithState           : UInt8 = 18
    static var alpha                         : UInt8 = 19
}