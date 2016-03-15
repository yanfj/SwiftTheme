//
//  SelectThemeViewController.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/1.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit
import MBProgressHUD

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
        guard MyThemes.isBlueThemeExist() else {

            let title   = "Not Downloaded"
            let message = "Download the theme right now?"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Sure", style: .Default, handler: { action in
                let HUD = MBProgressHUD.showHUD("Download Theme...")
    
                MyThemes.downloadBlueTask() { isSuccess in
                    HUD.labelText = isSuccess ? "Successful!" : "Failure!"
                    HUD.mode = .Text
                    HUD.hide(true, afterDelay: 1)
                    
                    if isSuccess {
                        MyThemes.switchTo(.Blue)
                    }
                }
            }))
            
            presentViewController(alert, animated: true, completion: nil)
            return
        }
        
        MyThemes.switchTo(.Blue)
    }

}
