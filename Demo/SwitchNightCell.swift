//
//  SwitchNightCell.swift
//  Demo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class SwitchNightCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var nightIcon: UIImageView!
    @IBOutlet weak var nightSwitch: UISwitch!
    
    var beforeTheme = MyThemes.Red

    override func awakeFromNib() {
        super.awakeFromNib()
        
        theme_backgroundColor = globalBackgroundColorPicker
        
        title.theme_textColor = globalTextColorPicker
        nightIcon.theme_image = ThemeImagePicker(names: "icon_night_dark", "icon_night_dark", "icon_night_dark", "icon_night_light")
        
        themeUpdate()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "themeUpdate", name: ThemeUpdateNotification, object: nil)
    }
    
    @IBAction func changeNight(sender: UISwitch) {
        if sender.on {
            beforeTheme = MyThemes.current
            ThemeManager.setTheme(MyThemes.Night.rawValue)
        } else {
            ThemeManager.setTheme(beforeTheme.rawValue)
        }
    }
    
    @objc private func themeUpdate() {
        nightSwitch.on = MyThemes.isNight()
    }

}
