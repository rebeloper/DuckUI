//
//  UIStackView+.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

extension UIStackView {
    @discardableResult
    public func edgesTo(_ view: UIView, safeArea: D_ViewSafeArea = .none) -> UIStackView {
        translatesAutoresizingMaskIntoConstraints = false
        
        switch safeArea {
        case .top:
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .leading:
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .trailing:
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .bottom:
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        case .vertical:
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        case .horizontal:
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        case .all:
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        case .none:
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
        return self
    }
    
    @discardableResult
    open func setupSubview(backgroundColor: UIColor = .white, cornerRadius: CGFloat = 0, borderWidth: CGFloat = 0, borderColor: UIColor = .clear) -> UIStackView {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = backgroundColor
        subview.layer.masksToBounds = true
        subview.layer.cornerRadius = cornerRadius
        subview.layer.borderWidth = borderWidth
        subview.layer.borderColor = borderColor.cgColor
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subview, at: 0)
        return self
    }
    
    @discardableResult
    open func height(_ height: CGFloat) -> UIStackView {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    open func width(_ width: CGFloat) -> UIStackView {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
}

extension UIStackView {
    
    @discardableResult
    open func padding(_ margins: [D_Padding], amount: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        
        margins.forEach { (padding) in
            switch padding {
            case .top:
                layoutMargins.top = amount
            case .left:
                layoutMargins.left = amount
            case .right:
                layoutMargins.right = amount
            case .bottom:
                layoutMargins.bottom = amount
            case .verticalMargins:
                layoutMargins.top = amount
                layoutMargins.bottom = amount
            case .horizontalMargins:
                layoutMargins.left = amount
                layoutMargins.right = amount
            case .allMargins:
                layoutMargins = UIEdgeInsets(top: amount, left: amount, bottom: amount, right: amount)
            }
        }
        
        return self
    }
    
}
