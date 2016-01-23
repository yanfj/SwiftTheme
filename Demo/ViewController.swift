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
        
        view.theme_backgroundColor = ThemePicker(colorKeyPath: "Global.backgroundColor")
        
        var button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        button.setTitle("这是标题", forState: .Normal)
        button.theme_titleColorWithState = ThemePicker(colorKeyPath: "ViewController.buttonTitleNormalColor", state: .Normal)
        view.addSubview(button)
    }
    
    var toggle: Bool = false
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        toggle = !toggle
        ThemeManager.setTheme(toggle ? "Night" : "Day", path: .MainBundle)
    }

}

