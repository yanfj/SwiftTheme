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
        MyThemes.switchTo(.Red)
    }
    
    @IBAction func tapYellow(sender: AnyObject) {
        MyThemes.switchTo(.Yello)
    }
    
    @IBAction func tapBlue(sender: AnyObject) {
        MyThemes.switchTo(.Blue)
    }

}
