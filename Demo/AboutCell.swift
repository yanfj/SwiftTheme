//
//  AboutCell.swift
//  Demo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        theme_backgroundColor = globalBackgroundColorPicker
        
        content.theme_textColor = globalTextColorPicker
    }

}
