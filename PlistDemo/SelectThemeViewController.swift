//
//  SelectThemeViewController.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/1.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class SelectThemeViewController: UIViewController, UIAlertViewDelegate {

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
            
            if #available(iOS 8.0, *) {
                
                let alert = UIAlertController(title: title,
                                              message: message,
                                              preferredStyle: .Alert)

                alert.addAction(UIAlertAction(
                    title: "Cancel",
                    style: .Cancel,
                    handler: nil)
                )
                alert.addAction(UIAlertAction(
                    title: "Sure",
                    style: .Default,
                    handler: { [unowned self] _ in
                        self.downloadStart()
                    })
                )
                
                presentViewController(alert, animated: true, completion: nil)
                
            } else {
                
                UIAlertView(title: title,
                            message: message,
                            delegate: self,
                            cancelButtonTitle: "Cancel",
                            otherButtonTitles: "Sure").show()
                
            }
            return
        }
        
        MyThemes.switchTo(.Blue)
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            downloadStart()
        }
    }
    
    private func downloadStart() {
        let HUD = MBProgressHUD.showHUD("Download Theme...")
        
        MyThemes.downloadBlueTask() { isSuccess in
            HUD.labelText = isSuccess ? "Successful!" : "Failure!"
            HUD.mode = .Text
            HUD.hide(true, afterDelay: 1)
            
            if isSuccess {
                MyThemes.switchTo(.Blue)
            }
        }
    }

}
