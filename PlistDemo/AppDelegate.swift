//
//  AppDelegate.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/1.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        ThemeManager.setTheme("Red", path: .MainBundle)
        
        // status bar
        
        let statusPicker = ThemeStatusBarStylePicker(keyPath: "UIStatusBarStyle")
        UIApplication.sharedApplication().theme_setStatusBarStyle(statusPicker, animated: true)
        
        // navigation bar
        
        let navigationBar = UINavigationBar.appearance()
        navigationBar.theme_tintColor = globalBarTextColorPicker
        navigationBar.theme_barTintColor = globalBarTintColorPicker
        
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
    
    func applicationWillTerminate(application: UIApplication) { }
    

}

