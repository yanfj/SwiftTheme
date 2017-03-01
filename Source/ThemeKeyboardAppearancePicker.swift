//
//  ThemeKeyboardAppearancePicker.swift
//  SwiftTheme
//
//  Created by Gesen on 2017/3/1.
//  Copyright © 2017年 Gesen. All rights reserved.
//

import UIKit

public final class ThemeKeyboardAppearancePicker: ThemePicker {
    
    public convenience init(keyPath: String) {
        self.init(v: { ThemeKeyboardAppearancePicker.getStyle(stringStyle: ThemeManager.stringForKeyPath(keyPath) ?? "") })
    }
    
    public convenience init(styles: UIKeyboardAppearance...) {
        self.init(v: { ThemeManager.elementForArray(styles) })
    }
    
    public required convenience init(arrayLiteral elements: UIKeyboardAppearance...) {
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
    
    public class func pickerWithKeyPath(_ keyPath: String) -> ThemeKeyboardAppearancePicker {
        return ThemeKeyboardAppearancePicker(keyPath: keyPath)
    }
    
    public class func pickerWithStyles(_ styles: [UIKeyboardAppearance]) -> ThemeKeyboardAppearancePicker {
        return ThemeKeyboardAppearancePicker(v: { ThemeManager.elementForArray(styles) })
    }
    
    public class func pickerWithStringStyles(_ styles: [String]) -> ThemeKeyboardAppearancePicker {
        return ThemeKeyboardAppearancePicker(v: { ThemeManager.elementForArray(styles.map(getStyle)) })
    }
    
    class func getStyle(stringStyle: String) -> UIKeyboardAppearance {
        switch stringStyle.lowercased() {
        case "default"  : return .default
        case "dark"     : return .dark
        case "light"    : return .light
        default: return .default
        }
    }
    
}

extension ThemeKeyboardAppearancePicker: ExpressibleByArrayLiteral {}
extension ThemeKeyboardAppearancePicker: ExpressibleByStringLiteral {}
