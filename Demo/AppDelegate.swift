//
//  AppDelegate.swift
//  Demo
//
//  Created by Gesen on 16/1/23.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        MyThemes.restoreLastTheme()
        
        // status bar
        
        let statusPicker = ThemeStatusBarStylePicker(styles: .LightContent, .Default, .LightContent, .LightContent)
        UIApplication.sharedApplication().theme_setStatusBarStyle(statusPicker, animated: true)
        
        // navigation bar

        let navigationBar = UINavigationBar.appearance()
        let shadow = NSShadow(); shadow.shadowOffset = CGSizeZero
        let titleAttributes: [[String: AnyObject]] = globalBarTextColor.map { hexString in
            return [
                NSForegroundColorAttributeName: UIColor(rgba: hexString),
                NSFontAttributeName: UIFont.systemFontOfSize(16),
                NSShadowAttributeName: shadow
            ]
        }
        
        navigationBar.theme_tintColor = globalBarTextColorPicker
        navigationBar.theme_barTintColor = globalBarTintColorPicker
        navigationBar.theme_titleTextAttributes = ThemeDictionaryPicker.pickerWithDicts(titleAttributes)
        
        // tab bar
        
        let tabBar = UITabBar.appearance()
        tabBar.theme_tintColor = globalBarTextColorPicker
        tabBar.theme_barTintColor = globalBarTintColorPicker
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) { }

    func applicationDidEnterBackground(application: UIApplication) { }

    func applicationWillEnterForeground(application: UIApplication) { }

    func applicationDidBecomeActive(application: UIApplication) { }

    func applicationWillTerminate(application: UIApplication) {
        MyThemes.saveLastTheme()
    }


}

