//
//  ViewController.swift
//  Demo
//
//  Created by Gesen on 16/1/23.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.theme_setBackgroundColor(ThemeColorPicker(keyPath: "Global.backgroundColor"))
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        button.setTitle("这是标题", forState: .Normal)
        button.setTitle("这是标题高亮", forState: .Highlighted)
        button.theme_setTitleColor(ThemeColorPicker(keyPath: "ViewController.buttonTitleNormalColor"), forState: .Normal)
        button.theme_setTitleColor(ThemeColorPicker(keyPath: "ViewController.buttonTitleHighlightedColor"), forState: .Highlighted)
        button.theme_setAlpha(ThemeCGFloatPicker(keyPath: "ViewController.buttonAlpha"))
        button.layer.borderWidth = 1
        button.layer.theme_setBorderColor(ThemeCGColorPicker(keyPath: "ViewController.buttonTitleHighlightedColor"))
        view.addSubview(button)
    }
    
    var toggle: Bool = false
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        toggle = !toggle
        ThemeManager.setTheme(toggle ? "Night" : "Day", path: .MainBundle)
    }

}

