//
//  SelectThemeViewController.swift
//  Demo
//
//  Created by Gesen on 16/3/1.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class SelectThemeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.theme_backgroundColor = globalBackgroundColorPicker
    }
    
    @IBAction func tapRed(sender: AnyObject) {
        ThemeManager.setTheme(MyThemes.Red.rawValue)
    }
    
    @IBAction func tapYellow(sender: AnyObject) {
        ThemeManager.setTheme(MyThemes.Yello.rawValue)
    }
    
    @IBAction func tapBlue(sender: AnyObject) {
        ThemeManager.setTheme(MyThemes.Blue.rawValue)
    }

}
