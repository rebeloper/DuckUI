//
//  UIButton+.swift
//  DuckUI
//
//  Created by Alex Nagy on 11/06/2019.
//

import UIKit

extension UIButton {
    
    @discardableResult
    open func image(_ image: UIImage?, renderingMode: UIImage.RenderingMode = .alwaysOriginal) -> UIButton {
        setImage(image?.withRenderingMode(renderingMode), for: .normal)
        return self
    }
    
    @discardableResult
    open func text(_ text: String) -> UIButton {
        setTitle(text, for: .normal)
        return self
    }
    
    @discardableResult
    open func text(_ color: UIColor) -> UIButton {
        setTitleColor(color, for: .normal)
        return self
    }
    
    @discardableResult
    open func tint(_ color: UIColor) -> UIButton {
        tintColor = color
        return self
    }
    
    @discardableResult
    open func background(_ color: UIColor) -> UIButton {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    open func background(_ image: UIImage?) -> UIButton {
        setBackgroundImage(image, for: .normal)
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont) -> UIButton {
        titleLabel?.font = font
        return self
    }
    
    @discardableResult
    public func corner(_ radius: CGFloat) -> UIButton {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat) -> UIButton {
        layer.borderWidth = width
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(_ color: UIColor) -> UIButton {
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> UIButton {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    open func content(_ mode: UIView.ContentMode) -> UIButton {
        imageView?.contentMode = mode
        return self
    }
    
    @discardableResult
    open func tag(_ tag: Int) -> UIButton {
        self.tag = tag
        return self
    }
    
    @discardableResult
    public func rotate(by angle: CGFloat) -> UIButton{
        let radians = angle / 180.0 * CGFloat.pi
        let rotation = self.transform.rotated(by: radians)
        self.transform = rotation
        return self
    }
    
    @discardableResult
    open func frame(_ size: CGSize) -> UIButton {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
        heightAnchor.constraint(equalToConstant: size.height).isActive = true
        return self
    }
    
    @discardableResult
    open func height(_ height: CGFloat) -> UIButton {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    open func width(_ width: CGFloat) -> UIButton {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    open func add(target: Any? = nil, action: Selector? = nil) -> UIButton {
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
        return self
    }
}

extension UIButton {
    @discardableResult
    public func circular(_ radius: CGFloat) -> UIButton {
        layer.masksToBounds = true
        layer.cornerRadius = radius
        setFrame(CGSize(width: radius * 2, height: radius * 2))
        return self
    }
}
