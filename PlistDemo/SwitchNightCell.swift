//
//  SwitchNightCell.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class SwitchNightCell: BaseCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var nightIcon: UIImageView!
    @IBOutlet weak var nightSwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()

        title.theme_textColor = globalTextColorPicker
        nightIcon.theme_image = ThemeImagePicker(keyPath: "SwitchNightCell.iconImage")
        
        updateNightSwitch()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateNightSwitch), name: ThemeUpdateNotification, object: nil)
    }
    
    @IBAction func changeNight(sender: UISwitch) {
        MyThemes.switchToNight(sender.on)
    }
    
    @objc private func updateNightSwitch() {
        nightSwitch.on = MyThemes.isNight()
    }

}
