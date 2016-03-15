//
//  ChangeThemeCell.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class ChangeThemeCell: BaseCell {
    
    @IBOutlet weak var changeTheme: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let titlePicker1 = ThemeColorPicker(keyPath: "ChangeThemeCell.buttonTitleColorNormal")
        let titlePicker2 = ThemeColorPicker(keyPath: "ChangeThemeCell.buttonTitleColorHighlighted")
        let backgroundPicker = ThemeColorPicker(keyPath: "ChangeThemeCell.buttonBackgroundColor")
        
        changeTheme.theme_setTitleColor(titlePicker1, forState: .Normal)
        changeTheme.theme_setTitleColor(titlePicker2, forState: .Highlighted)
        changeTheme.theme_backgroundColor = backgroundPicker
        changeTheme.layer.cornerRadius = changeTheme.bounds.size.width / 2
    }
    
    @IBAction func tapChange(sender: UIButton) {
        MyThemes.switchToNext()
    }

}
