//
//  UITextField+PlaceholderAttributes.swift
//  SwiftTheme
//
//  Created by kcramer on 3/6/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

extension UITextField {
    @objc func updatePlaceholderAttributes(_ newAttributes: [NSAttributedStringKey: Any]) {
        guard let placeholder = self.attributedPlaceholder else { return }
        let newString = NSMutableAttributedString(attributedString: placeholder)
        let range = NSMakeRange(0, placeholder.length)
        newString.enumerateAttributes(in: range, options: []) { (currentAttributes, range, _) in
            let mergedAttributes = currentAttributes.merge(with: newAttributes)
            newString.setAttributes(mergedAttributes, range: range)
        }
        self.attributedPlaceholder = newString
    }
}

// Merge a dictionary into another dictionary, returning a new dictionary.
// The values of the other dictionary overwrite the values of the current dictionary.
private extension Dictionary {
    func merge(with dict: Dictionary) -> Dictionary {
        return dict.reduce(into: self) { (result, pair) in
            let (key, value) = pair
            result[key] = value
        }
    }
}
