//
//  Helper.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/15.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import Foundation


let cachesURL = NSFileManager.defaultManager().URLsForDirectory(.CachesDirectory, inDomains: .UserDomainMask)[0]
let libraryURL = NSFileManager.defaultManager().URLsForDirectory(.LibraryDirectory, inDomains: .UserDomainMask)[0]


extension MBProgressHUD {

    class func showHUD(text: String) -> MBProgressHUD {
        let view = UIApplication.sharedApplication().windows.last
        
        let HUD = MBProgressHUD.showHUDAddedTo(view, animated: true)
        HUD.labelText = text
        HUD.removeFromSuperViewOnHide = true
        HUD.dimBackground = false
        return HUD
    }
    
}
