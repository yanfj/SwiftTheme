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
    
}

public class ThemeImagePicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: { return ThemeManager.imageForKeyPath(keyPath) })
    }
    
}

public class ThemeNumberPicker: ThemePicker {
    
    convenience init(keyPath: String) {
        self.init(v: { return ThemeManager.numberForKeyPath(keyPath) })
    }
    
}

public class ThemeStatePicker: ThemePicker {
    
    public typealias ValuesType = [UInt: ThemePicker]
    
    var values = ValuesType()
    
    convenience init(picker: ThemePicker, withState state: UIControlState) {
        self.init(v: { return 0 } )
        self.setPicker(picker, forState: state)
    }
    
    func setPicker(picker: ThemePicker, forState state: UIControlState) -> Self {
        values[state.rawValue] = picker
        return self
    }
    
}