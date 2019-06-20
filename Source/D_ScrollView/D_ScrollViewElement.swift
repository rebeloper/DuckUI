//
//  D_ScrollViewElement.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

public class D_ScrollViewElement: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(size: CGSize, backgroundColor: UIColor = .white) {
        self.init()
        setWidth(size.width)
        setHeight(size.height)
        self.backgroundColor = backgroundColor
    }
    
    public convenience init(width: CGFloat, height: CGFloat, backgroundColor: UIColor = .white) {
        self.init()
        setWidth(width)
        setHeight(height)
        self.backgroundColor = backgroundColor
    }
    
    public convenience init(width: CGFloat, backgroundColor: UIColor = .white) {
        self.init()
        setWidth(width)
        self.backgroundColor = backgroundColor
    }
    
    public convenience init(height: CGFloat, backgroundColor: UIColor = .white) {
        self.init()
        setHeight(height)
        self.backgroundColor = backgroundColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
