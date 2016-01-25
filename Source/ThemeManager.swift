//
//  ThemeManager.swift
//  SwiftTheme
//
//  Created by Gesen on 16/1/22.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

let ThemeUpdateNotification = "ThemeUpdateNotification"

enum ThemePath {
    
    case MainBundle
    case Sandbox(NSURL)
    
    var URL: NSURL? {
        switch self {
        case .MainBundle        : return nil
        case .Sandbox(let path) : return path
        }
    }
    
    func plistPathByName(name: String) -> String? {
        switch self {
        case .MainBundle:
            return NSBundle.mainBundle().pathForResource(name, ofType: "plist")
        case .Sandbox(let path):
            return NSURL(string: name + ".plist", relativeToURL: path)?.path
        }
    }
}

public class ThemeManager: NSObject {
    
    static var animationDuration = 0.3
    
    private(set) static var currentTheme     : NSDictionary?
    private(set) static var currentThemePath : ThemePath?
    
    class func setTheme(plistName: String, path: ThemePath) {
        guard let plistPath = path.plistPathByName(plistName)         else { return }
        guard let plistDict = NSDictionary(contentsOfFile: plistPath) else { return }
        self.setTheme(plistDict, path: path)
    }
    
    class func setTheme(dict: NSDictionary, path: ThemePath) {
        currentTheme = dict
        currentThemePath = path
        NSNotificationCenter.defaultCenter().postNotificationName(ThemeUpdateNotification, object: nil)
    }
    
    class func stringForKeyPath(keyPath: String) -> String? {
        return currentTheme?.valueForKeyPath(keyPath) as? String
    }
    
    class func colorForKeyPath(keyPath: String) -> UIColor? {
        guard let rgba = stringForKeyPath(keyPath) else {
            print("WARNING: Not found color key path: \(keyPath)")
            return nil
        }
        guard let color = try? UIColor(rgba_throws: rgba) else {
            print("WARNING: Not found color rgba: \(rgba)")
            return nil
        }
        return color
    }
    
    class func imageForKeyPath(keyPath: String) -> UIImage? {
        guard let imageName = stringForKeyPath(keyPath) else {
            print("WARNING: Not found image key path: \(keyPath)")
            return nil
        }
        if let filePath = currentThemePath?.URL?.URLByAppendingPathComponent(imageName).path {
            return UIImage(contentsOfFile: filePath)
        } else {
            return UIImage(named: imageName)
        }
    }
    
}

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
