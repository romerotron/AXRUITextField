//
//  AXRUITextField.swift
//
//
//  Created by Allen X. Romero
//  Copyright © 2017 Allen X. Romero. All rights reserved.
//

import Foundation
import UIKit

class AXRUITextField: UITextField,  UITextFieldDelegate {
    
    // Override the required initializers
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        delegate = self
        setProperties()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        delegate = self
        setProperties()
    }

    // Custom initializer with BOOL for AutoLayout
    init(frame: CGRect, autoLayout: ObjCBool){
        super.init(frame: frame)
        delegate = self
        
        if autoLayout.boolValue {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        setProperties()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, edgeInsets())
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, edgeInsets())
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, edgeInsets())
    }

    func edgeInsets() -> UIEdgeInsets {
        return UIEdgeInsets(top:4, left:15, bottom:4, right:15)
    }
    
    func setProperties(){

        // Set the border color and border width
        self.layer.borderColor = UIColor.blueHighlight().cgColor
        self.layer.borderWidth = 2
        
        // Set the corner radius
        self.layer.cornerRadius = 3

        // Turn off auto-correct
        self.autocorrectionType = .no
        
        // Set default keyboard to dark
        self.keyboardAppearance = .dark
        
    }
    
}
