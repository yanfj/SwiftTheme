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
        case .MainBundle:        return NSBundle.mainBundle().pathForResource(name, ofType: "plist")
        case .Sandbox(let path): return NSURL(string: name + ".plist", relativeToURL: path)?.path
        }
    }
}

public class ThemeManager: NSObject {
    
    static var animationDuration = 0.3
    
    private(set) static var currentTheme      : NSDictionary?
    private(set) static var currentThemePath  : ThemePath?
    private(set) static var currentThemeIndex : Int = 0
    
    class func setTheme(index: Int) {
        currentThemeIndex = index
        NSNotificationCenter.defaultCenter().postNotificationName(ThemeUpdateNotification, object: nil)
    }
    
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
    
}

extension ThemeManager {
    
    class func stringForArray(array: [String]) -> String? {
        guard let string = elementForArray(array) as? String else {
            print("WARNING: Not found string in array: \(array)[\(currentThemeIndex)]")
            return nil
        }
        return string
    }
    
    class func colorForArray(array: [String]) -> UIColor? {
        guard let rgba = stringForArray(array) else { return nil }
        guard let color = try? UIColor(rgba_throws: rgba) else {
            print("WARNING: Not convert rgba \(rgba) in array: \(array)[\(currentThemeIndex)]")
            return nil
        }
        return color
    }
    
    class func imageForArray(array: [String]) -> UIImage? {
        guard let imageName = stringForArray(array) else { return nil }
        guard let image = UIImage(named: imageName) else {
            print("WARNING: Not found image name \(imageName) in array: \(array)[\(currentThemeIndex)]")
            return nil
        }
        return image
    }
    
    class func elementForArray<T: AnyObject>(array: [T]) -> T? {
        let index = ThemeManager.currentThemeIndex
        return array.indices ~= index ? array[index] : nil
    }
    
}

extension ThemeManager {
    
    class func stringForKeyPath(keyPath: String) -> String? {
        guard let string = currentTheme?.valueForKeyPath(keyPath) as? String else {
            print("WARNING: Not found string key path: \(keyPath)")
            return nil
        }
        return string
    }
    
    class func numberForKeyPath(keyPath: String) -> NSNumber? {
        guard let number = currentTheme?.valueForKeyPath(keyPath) as? NSNumber else {
            print("WARNING: Not found number key path: \(keyPath)")
            return nil
        }
        return number
    }
    
    class func colorForKeyPath(keyPath: String) -> UIColor? {
        guard let rgba = stringForKeyPath(keyPath) else { return nil }
        guard let color = try? UIColor(rgba_throws: rgba) else {
            print("WARNING: Not convert rgba \(rgba) at key path: \(keyPath)")
            return nil
        }
        return color
    }
    
    class func imageForKeyPath(keyPath: String) -> UIImage? {
        guard let imageName = stringForKeyPath(keyPath) else { return nil }
        if let filePath = currentThemePath?.URL?.URLByAppendingPathComponent(imageName).path {
            guard let image = UIImage(contentsOfFile: filePath) else {
                print("WARNING: Not found image at file path: \(filePath)")
                return nil
            }
            return image
        } else {
            guard let image = UIImage(named: imageName) else {
                print("WARNING: Not found image name at main bundle: \(imageName)")
                return nil
            }
            return image
        }
    }
    
}
