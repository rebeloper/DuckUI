//
//  D_TextView+.swift
//  DuckUI
//
//  Created by Alex Nagy on 19/06/2019.
//

import Foundation

extension D_TextView {
    
    @discardableResult
    open func text(_ text: String) -> D_TextView {
        self.text = text
        return self
    }
    
    @discardableResult
    open func placeholder(_ placeholder: String, color: UIColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)) -> D_TextView {
        self.placeholder = placeholder as NSString
        self.placeholderColor = color
        return self
    }
    
    @discardableResult
    open func background(_ color: UIColor) -> D_TextView {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    public func corner(_ radius: CGFloat) -> D_TextView {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat) -> D_TextView {
        layer.borderWidth = width
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(_ color: UIColor) -> D_TextView {
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> D_TextView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> D_TextView {
        self.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> D_TextView {
        self.textAlignment = textAlignment
        return self
    }
}
