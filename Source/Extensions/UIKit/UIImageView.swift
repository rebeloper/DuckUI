//
//  UIImageView.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    @discardableResult
    public func background(_ color: UIColor) -> UIImageView {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func circular(_ radius: CGFloat) -> UIImageView {
        layer.masksToBounds = true
        layer.cornerRadius = radius
        setFrame(CGSize(width: radius * 2, height: radius * 2))
        return self
    }
    
    @discardableResult
    public func insets(_ insets: UIEdgeInsets) -> UIImageView {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: self.topAnchor, constant: insets.top).isActive = true
        bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: insets.bottom).isActive = true
        leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: insets.left).isActive = true
        trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: insets.right).isActive = true
        return self
    }
    
    @discardableResult
    open func frame(_ size: CGSize) -> UIImageView {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
        heightAnchor.constraint(equalToConstant: size.height).isActive = true
        return self
    }
    
    @discardableResult
    open func height(_ height: CGFloat) -> UIImageView {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    open func width(_ width: CGFloat) -> UIImageView {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    open func setImage(from imageUrl: String) {
        if imageUrl.contains("https:") {
            if let url = URL(string: imageUrl) {
                let resource = ImageResource(downloadURL: url)
                self.kf.setImage(with: resource)
            }
        } else {
            self.image = UIImage(named: imageUrl)
        }
    }
}
