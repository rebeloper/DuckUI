//
//  D_ListCell.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/// D_ListCell represents a cell that ListHeaderController registers and dequeues for list rendering. T represents the Class Type, usually a model or view model object, this cell should render visually.
open class D_ListCell<CI>: UICollectionViewCell {
    
    /// item is fed in automatically from ListHeaderController
    open var item: CI!
    
    /// 90% of lists need a separator line
    public let separatorView = UIView().setBackground(color: UIColor(white: 0.6, alpha: 0.5))
    
    /// This convenience method sets up the separate line with some left padding
    open func addSeparatorView(leftPadding: CGFloat = 0) {
        addSubview(separatorView)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: leftPadding).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
    
    /// This sets up the separator to be anchored to some leading anchor
    open func addSeparatorView(leadingAnchor: NSLayoutXAxisAnchor) {
        addSubview(separatorView)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        observe()
        bind()
        fetchData()
    }
    
    /// In your custom ListCell classes, just override setupViews() to provide custom behavior. We do this to avoid overriding init methods.
    open func setupViews() {}
    
    /// In your custom ListCell classes, just override observe() to observe events.
    open func observe() {}
    
    /// In your custom ListCell classes, just override bind() to bind elements together.
    open func bind() {}
    
    // In your custom ListCell classes, just override fetchData() to manually fetch data on this particular cell. This behavior is highly unrecomended, but may be usefull in a few cases.
    open func fetchData() {}
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}



