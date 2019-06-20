//
//  D_SCButtonView.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

public class D_SCButtonView: UIView {
    
    public var button: UIButton?
    
    public init(_ button: UIButton, radius: CGFloat, color: UIColor, offset: CGSize, opacity: Float, cornerRadius: CGFloat) {
        self.button = button
        super.init(frame: .zero)
        backgroundColor = .white
        clipsToBounds       = true
        layer.masksToBounds = false
        layer.shadowColor   = color.cgColor
        layer.shadowOffset  = offset
        layer.shadowRadius  = radius
        layer.shadowOpacity = opacity
        layer.cornerRadius  = cornerRadius
        
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        addSubview(button)
        button.edgeTo(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
