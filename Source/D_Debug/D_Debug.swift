//
//  D_Debug.swift
//  DuckUI
//
//  Created by Alex Nagy on 11/06/2019.
//

import UIKit

extension UIView {
    @discardableResult
    public func debug() -> UIView {
        let randomColor = UIColor.random
        backgroundColor = randomColor.withAlphaComponent(0.3)
        setBorder(width: 1, color: randomColor)
        setCorner(3)
        return self
    }
}

extension UIStackView {
    @discardableResult
    public func addDebug() -> UIStackView {
        let subview = UIView(frame: bounds)
        let randomColor = UIColor.random
        subview.backgroundColor = randomColor.withAlphaComponent(0.3)
        subview.setBorder(width: 1, color: randomColor)
        subview.setCorner(3)
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subview, at: 0)
        return self
    }
}

