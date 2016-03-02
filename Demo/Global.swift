//
//  Global.swift
//  Demo
//
//  Created by Gesen on 16/3/1.
//  Copyright © 2016年 Gesen. All rights reserved.
//

enum MyThemes: Int {
    case Red   = 0
    case Yello = 1
    case Blue  = 2
    case Night = 3
    
    static var current: MyThemes {
        return MyThemes(rawValue: ThemeManager.currentThemeIndex)!
    }
    
    static func nextThemeIndex() -> Int {
        var next = ThemeManager.currentThemeIndex + 1
        if next > 2 { next = 0 } // cycle and without Night
        return next
    }
    
    static func isNight() -> Bool {
        return ThemeManager.currentThemeIndex == Night.rawValue
    }
}

let globalBackgroundColorPicker = ThemeColorPicker(colors: "#fff", "#fff", "#fff", "#292b38")
let globalTextColorPicker = ThemeColorPicker(colors: "#000", "#000", "#000", "#ECF0F1")

let globalBarTextColor = ["#FFF", "#000", "#FFF", "#FFF"]
let globalBarTextColorPicker = ThemeColorPicker.pickerWithColors(globalBarTextColor)
let globalBarTintColorPicker = ThemeColorPicker(colors: "#EB4F38", "#F4C600", "#56ABE4", "#01040D")
