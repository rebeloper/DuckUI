//
//  D_ScrollView+.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

extension UIView {
    
    @discardableResult
    public func addStatusBarCover(backgroundColor: UIColor = .white) -> UIView {
        let cover = UIView().setBackground(color: backgroundColor)
        addSubview(cover)
        
        cover.translatesAutoresizingMaskIntoConstraints = false
        
        cover.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cover.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cover.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        cover.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        
        return self
    }
    
    @discardableResult
    public func addHomeIndicatorCover(backgroundColor: UIColor = .white) -> UIView {
        let cover = UIView().setBackground(color: backgroundColor)
        addSubview(cover)
        
        cover.translatesAutoresizingMaskIntoConstraints = false
        
        cover.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        cover.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cover.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        cover.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        return self
    }
    
    @discardableResult
    public func addScrollView(_ scrollView: D_ScrollView, withSafeArea: D_ViewSafeArea = .none, hasStatusBarCover: Bool = false, statusBarBackgroundColor: UIColor = .white, container: D_ScrollViewContainer, elements: UIView...) -> UIView {
        addSubview(scrollView)
        scrollView.addSubview(container)
        
        if hasStatusBarCover {
            addStatusBarCover(backgroundColor: statusBarBackgroundColor)
        }
        
        scrollView.edgeTo(self, safeArea: withSafeArea)
        container.edgeTo(scrollView)
        
        elements.forEach { (element) in
            container.addArrangedSubview(element)
        }
        
        return self
    }
    
}
