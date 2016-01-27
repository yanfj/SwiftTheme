//
//  ThemePicker.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/25.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

public class ThemePicker: NSObject, NSCopying {
    
    public typealias ValueType = () -> AnyObject?
    
    var value: ValueType
    
    required public init(v: ValueType) {
        value = v
    }
    
    public func copyWithZone(zone: NSZone) -> AnyObject {
        return self.dynamicType.init(v: value)
    }
    
}

public class ThemeColorPicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: { return ThemeManager.colorForKeyPath(keyPath) })
    }
    
    class func pickerWithKeyPath(keyPath: String) -> ThemeColorPicker {
        return ThemeColorPicker(keyPath: keyPath)
    }
    
}

public class ThemeImagePicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: { return ThemeManager.imageForKeyPath(keyPath) })
    }
    
    class func pickerWithKeyPath(keyPath: String) -> ThemeImagePicker {
        return ThemeImagePicker(keyPath: keyPath)
    }
}

public class ThemeStatePicker: ThemePicker {
    
    public typealias ValuesType = [UInt: ThemePicker]
    
    var values = ValuesType()
    
    convenience init(picker: ThemePicker, withState state: UIControlState) {
        self.init(v: { return 0 } )
        self.setPicker(picker, forState: state)
    }
    
    class func pickerWithPicker(picker: ThemePicker, andState state: UIControlState) -> ThemeStatePicker {
        return ThemeStatePicker(picker: picker, withState: state)
    }
    
    func setPicker(picker: ThemePicker, forState state: UIControlState) -> Self {
        values[state.rawValue] = picker
        return self
    }
}

public class ThemeCGFloatPicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: {
            guard let number = ThemeManager.numberForKeyPath(keyPath) else {
                return nil
            }
            return CGFloat(number)
        })
    }
    
    class func pickerWithKeyPath(keyPath: String) -> ThemeCGFloatPicker {
        return ThemeCGFloatPicker(keyPath: keyPath)
    }
}

public class ThemeCGColorPicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: { return ThemeManager.colorForKeyPath(keyPath)?.CGColor })
    }
    
    class func pickerWithKeyPath(keyPath: String) -> ThemeCGColorPicker {
        return ThemeCGColorPicker(keyPath: keyPath)
    }
}