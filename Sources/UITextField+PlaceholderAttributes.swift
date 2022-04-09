//
//  UITextField+PlaceholderAttributes.swift
//  SwiftTheme
//
//  Created by kcramer on 3/6/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

extension UITextField {
    @objc func updatePlaceholderAttributes(_ newAttributes: [NSAttributedString.Key: Any]) {
        var attributedPlaceholder: NSAttributedString?
        if (self.attributedPlaceholder != nil) {
            attributedPlaceholder = self.attributedPlaceholder
        } else if (self.placeholder != nil) {
            attributedPlaceholder = NSAttributedString(string: self.placeholder!)
        }
        guard (attributedPlaceholder != nil) else { return }
        let newString = NSAttributedString(attributedString: attributedPlaceholder!,
                                           merging: newAttributes)
        self.attributedPlaceholder = newString
        return
    }
}
