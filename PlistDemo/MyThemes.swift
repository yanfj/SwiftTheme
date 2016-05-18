//
//  MyThemes.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/14.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import Foundation

enum MyThemes: Int {
    
    case Red   = 0
    case Yello = 1
    case Blue  = 2
    case Night = 3
    
    // MARK: -
    
    static var current = MyThemes.Red
    static var before  = MyThemes.Red
    
    // MARK: - Switch Theme
    
    static func switchTo(theme: MyThemes) {
        before  = current
        current = theme
        
        switch theme {
        case .Red   : ThemeManager.setTheme("Red", path: .MainBundle)
        case .Yello : ThemeManager.setTheme("Yellow", path: .MainBundle)
        case .Blue  : ThemeManager.setTheme("Blue", path: .Sandbox(blueDiretory))
        case .Night : ThemeManager.setTheme("Night", path: .MainBundle)
        }
    }
    
    static func switchToNext() {
        var next = current.rawValue + 1
        var max  = 2 // without Blue and Night
        
        if isBlueThemeExist() { max += 1 }
        if next >= max { next = 0 }
        
        switchTo(MyThemes(rawValue: next)!)
    }
    
    // MARK: - Switch Night
    
    static func switchToNight(isToNight: Bool) {
        switchTo(isToNight ? .Night : before)
    }
    
    static func isNight() -> Bool {
        return current == .Night
    }
    
    // MARK: - Download
    
    static func downloadBlueTask(handler: (isSuccess: Bool) -> Void) {
        
        let session = NSURLSession.sharedSession()
        let url = "https://github.com/jiecao-fm/SwiftThemeResources/blob/master/20160315/Blue.zip?raw=true"
        let URL = NSURL(string: url)
        
        let task = session.downloadTaskWithURL(URL!) { location, response, error in
            
            guard let location = location where error == nil else {
                dispatch_async(dispatch_get_main_queue()) {
                    handler(isSuccess: false)
                }
                return
            }
            
            let manager = NSFileManager.defaultManager()
            let zipPath = cachesURL.URLByAppendingPathComponent("Blue.zip")
            
            _ = try? manager.removeItemAtURL(zipPath)
            _ = try? manager.moveItemAtURL(location, toURL: zipPath)
            
            let isSuccess = SSZipArchive.unzipFileAtPath(zipPath.path,
                                        toDestination: unzipPath.path)
            
            dispatch_async(dispatch_get_main_queue()) {
                handler(isSuccess: isSuccess)
            }
        }
        
        task.resume()
    }
    
    static func isBlueThemeExist() -> Bool {
        return NSFileManager.defaultManager().fileExistsAtPath(blueDiretory.path!)
    }
    
    static let blueDiretory : NSURL = unzipPath.URLByAppendingPathComponent("Blue/")
    static let unzipPath    : NSURL = libraryURL.URLByAppendingPathComponent("Themes/20160315")
    
}