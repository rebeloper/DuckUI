//
//  D_ListHeader.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/// D_ListHeader represents a cell that the D_List controller registers and dequeues for list rendering. HI represents the Class Type, usually a model or view model object, this cell should render visually.
open class D_ListHeader<HI>: UICollectionReusableView {
    
    /// item is fed in automatically from ListHeaderController
    open var item: HI!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        observe()
        bind()
        fetchData()
    }
    
    /// In your custom D_ListHeader class, just override setupViews() to provide custom behavior. We do this to avoid overriding init methods.
    open func setupViews() {}
    
    /// In your custom D_ListHeader class, just override observe() to observe events.
    open func observe() {}
    
    /// In your custom D_ListHeader class, just override bind() to bind elements together.
    open func bind() {}
    
    // In your custom D_ListHeader class, just override fetchData() to manually fetch data on this particular cell. This behavior is highly unrecomended, but may be usefull in a few cases.
    open func fetchData() {}
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}

