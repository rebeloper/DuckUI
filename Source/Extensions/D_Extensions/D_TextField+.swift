//
//  D_TextField+.swift
//  DuckUI
//
//  Created by Alex Nagy on 19/06/2019.
//

import UIKit

extension D_TextField {
    
    @discardableResult
    open func text(_ text: String) -> D_TextField {
        self.text = text
        return self
    }
    
    @discardableResult
    open func placeholder(_ placeholder: String) -> D_TextField {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    open func background(_ color: UIColor) -> D_TextField {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    public func corner(_ radius: CGFloat) -> D_TextField {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat) -> D_TextField {
        layer.borderWidth = width
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(_ color: UIColor) -> D_TextField {
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> D_TextField {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType) -> D_TextField {
        self.autocapitalizationType = autocapitalizationType
        return self
    }
    
    @discardableResult
    public func keyboardType(_ keyboardType: UIKeyboardType) -> D_TextField {
        self.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    public func isSecureTextEntry(_ isSecureTextEntry: Bool) -> D_TextField {
        self.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
}

