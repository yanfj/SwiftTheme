//
//  NavigationController.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/14.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

//  1. Open Main.storyboard
//  2. Select UINavigationController
//  3. Show the identify inspector
//  4. Set Custom Class with NavigationController

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateTitleTextAttributes()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateTitleTextAttributes", name: ThemeUpdateNotification, object: nil)
    }

    func updateTitleTextAttributes() {
        guard let color = ThemeManager.colorForKeyPath("Global.barTextColor") else {
            return
        }

        let shadow = NSShadow(); shadow.shadowOffset = CGSizeZero
        let titleTextAttributes = [
            NSForegroundColorAttributeName: color,
            NSFontAttributeName: UIFont.systemFontOfSize(16),
            NSShadowAttributeName: shadow
        ]
        
        navigationBar.titleTextAttributes = titleTextAttributes
    }

}
