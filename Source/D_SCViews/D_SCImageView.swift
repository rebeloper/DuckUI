//
//  D_SCImageView.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

public class D_SCImageView: UIView {
    
    public var imageView: UIImageView?
    
    public init(_ imageView: UIImageView, radius: CGFloat, color: UIColor, offset: CGSize, opacity: Float, cornerRadius: CGFloat) {
        self.imageView = imageView
        super.init(frame: .zero)
        backgroundColor = .white
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.cornerRadius = cornerRadius
        
        imageView.layer.cornerRadius = cornerRadius
        imageView.clipsToBounds = true
        addSubview(imageView)
        imageView.edgeTo(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
