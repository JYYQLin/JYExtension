//
//  JY_TextField.swift
//  JYExtension
//
//  Created by JYYQLin on 2024/9/2.
//

import UIKit

class JY_TextField: UITextField {
    
    public var yq_placeholder_color: UIColor? {
        didSet{
            yq_change_placeholder();
        }
    }
    
    public var yq_placeholder_font: UIFont? {
        didSet{
            yq_change_placeholder();
        }
    }
    
    override var placeholder: String? {
        didSet{
            let p = placeholder
            yq_change_placeholder()
            super.placeholder = p
        }
    }

    private func yq_change_placeholder() {
        let ivar = class_getInstanceVariable(object_getClass(UITextField()), "_placeholderLabel")
        let placeholderLabel  = object_getIvar(self, ivar!) as? UILabel
        placeholderLabel?.textColor = yq_placeholder_color
        placeholderLabel?.font = yq_placeholder_font
    }
}
