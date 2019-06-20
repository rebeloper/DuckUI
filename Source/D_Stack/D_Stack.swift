//
//  D_Stack.swift
//  DuckUI
//
//  Created by Alex Nagy on 11/06/2019.
//

import UIKit

extension UIView {
    
    fileprivate func D_Stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = alignment
        stackView.distribution = distribution
        addSubview(stackView)
        stackView.edgeTo(self)
        return stackView
    }
    
    @discardableResult
    open func D_VStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        return D_Stack(.vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
    }
    
    @discardableResult
    open func D_HStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        return D_Stack(.horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
    }
    
    @discardableResult
    open func pad(_ view: UIView, margins: [D_Padding], amount: CGFloat) -> UIStackView {
        return D_Stack(.vertical, views: [view], spacing: 0, alignment: .fill, distribution: .fill).padding(margins, amount: amount)
    }
}


