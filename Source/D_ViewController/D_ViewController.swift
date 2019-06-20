//
//  D_ViewController.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

open class D_ViewController: UIViewController {
    
    public let container = UIView()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewsWith(safeArea: .all)
        bond()
        observe()
        fetchData()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    open func setupViewsWith(safeArea: D_ViewSafeArea) {
        view.addSubview(container)
        container.edgeTo(view, safeArea: safeArea)
    }
    
    open func bond() {}
    
    open func observe() {}
    
    open func fetchData() {}
}
