//
//  D_SCView.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

public class D_SCView: UIView {
    
    public init(radius: CGFloat, color: UIColor, offset: CGSize, opacity: Float, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        backgroundColor = .white
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.cornerRadius = cornerRadius
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
