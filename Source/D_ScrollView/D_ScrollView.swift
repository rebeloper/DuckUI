//
//  D_ScrollView.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

public class D_ScrollView: UIScrollView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        keyboardDismissMode = .interactive
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
