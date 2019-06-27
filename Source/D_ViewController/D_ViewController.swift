//
//  D_ViewController.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit
import Layoutless

open class D_ViewController: UIViewController {
    
    public let hud = Hud.create()
    
    public let container = UIView()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewsWith(safeArea: .all)
        bind()
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
    
    open func bind() {}
    
    open func observe() {}
    
    open func fetchData() {}
}
