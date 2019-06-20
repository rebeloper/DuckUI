//
//  D_Line.swift
//  DuckUI
//
//  Created by Alex Nagy on 17/06/2019.
//

import UIKit

open class D_Line: UIView {
    
    public init(_ type: D_LineType = .vertical, thikness: CGFloat = 1.0, color: UIColor = UIColor.lightGray) {
        super.init(frame: .zero)
        self.backgroundColor = color
        switch type {
        case .vertical:
            setWidth(thikness)
        case .horizontal:
            setHeight(thikness)
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

