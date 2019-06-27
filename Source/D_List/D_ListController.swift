//
//  D_ListController.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/**
 D_ListController helps register, dequeues, and sets up cells with their respective items to render in a standard single section list.
 ## Generics ##
 C: the cell type that this list will register and dequeue.
 
 CI: the item type that each cell will visually represent.
 
 H: the header type above the section of cells.
 
 HI: the item type that the header will visually represent.
 
 F: the footer type above the section of cells.
 
 FI: the item type that the footer will visually represent.
 
 */
open class D_ListController<C: D_ListCell<CI>, CI>: UICollectionViewController {
    
    let hud = Hud.create()
    
    /// An array of CI objects this list will render. When using items.append, you still need to manually call reloadData.
    open var items = [CI]() {
        didSet {
            collectionView.reloadData()
        }
    }
    
    fileprivate let cellId = "cellId"
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        collectionView.register(C.self, forCellWithReuseIdentifier: cellId)
        
        setupViews()
        observe()
        bind()
        fetchData()
    }
    
    /// In your custom D_List class, just override setupViews() to provide custom behavior. We do this to avoid overriding init methods.
    open func setupViews() {}
    
    /// In your custom D_List class, just override observe() to observe events.
    open func observe() {}
    
    /// In your custom D_List class, just override bind() to bind elements together.
    open func bind() {}
    
    // In your custom D_List class, just override fetchData() to manually fetch data on this particular cell. This behavior is highly unrecomended, but may be usefull in a few cases.
    open func fetchData() {}
    
    /// Customize your top view here
    open var topView = UIView().setBackground(color: .white)
    open var topViewHeight: CGFloat = 0
    
    /// Adds the collection view a top view
    open func addTopView(height: CGFloat, safeArea: Bool = true) {
        topViewHeight = height
        collectionView.contentInset = UIEdgeInsets(top: topViewHeight, left: 0, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        
        topView.topAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.topAnchor : view.topAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: topViewHeight).isActive = true
    }
    
    /// Customize your bottom view here
    open var bottomView = UIView().setBackground(color: .white)
    open var bottomViewHeight: CGFloat = 0
    
    /// Adds the collection view a bottom view
    open func addBottomView(height: CGFloat, safeArea: Bool = true) {
        bottomViewHeight = height
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: bottomViewHeight, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.bottomAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.topAnchor : view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: bottomViewHeight).isActive = true
    }
    
    /// Customize your leading view here
    open var leadingView = UIView().setBackground(color: .white)
    open var leadingViewWidht: CGFloat = 0
    
    /// Adds the collection view a leading view
    open func addLeadingView(width: CGFloat, safeArea: Bool = true) {
        leadingViewWidht = width
        collectionView.contentInset = UIEdgeInsets(top: 0, left: leadingViewWidht, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(leadingView)
        leadingView.translatesAutoresizingMaskIntoConstraints = false
        
        leadingView.leadingAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor).isActive = true
        leadingView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        leadingView.widthAnchor.constraint(equalToConstant: leadingViewWidht).isActive = true
    }
    
    /// Customize your trailing view here
    open var trailingView = UIView().setBackground(color: .white)
    open var trailingViewWidht: CGFloat = 0
    
    /// Adds the collection view a trailing view
    open func addTrailingView(width: CGFloat, safeArea: Bool = true) {
        trailingViewWidht = width
        collectionView.contentInset = UIEdgeInsets(top: 0, left: trailingViewWidht, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(trailingView)
        trailingView.translatesAutoresizingMaskIntoConstraints = false
        
        trailingView.trailingAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor).isActive = true
        trailingView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        trailingView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        trailingView.widthAnchor.constraint(equalToConstant: trailingViewWidht).isActive = true
    }
    
    /// Adds the collection view a background image
    open func addBackground(image: UIImage) {
        let imageView = UIImageView(image: image.withRenderingMode(.alwaysOriginal))
        imageView.contentMode = .scaleAspectFill
        collectionView.backgroundView = imageView
        collectionView.backgroundView?.layer.zPosition = -1
        collectionView.bounces = false
    }
    
    /// Override this to manually set up your cell with custom behavior.
    open func setupCell(_ cell: C) {}
    
    /// D_List controller automatically dequeues your C cell and sets the correct item object on it.
    override open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! C
        cell.item = items[indexPath.row]
        setupCell(cell)
        return cell
    }
    
    override open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    /// If you don't provide this, headers and footers for UICollectionViewControllers will be drawn above the scroll bar.
    override open func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
        view.layer.zPosition = -1
    }
    
    /**
     Initializes your D_List controller with a plain UICollectionViewFlowLayout.
     
     ## Parameters ##
     scrollDirection: direction that your cells will be rendered
     
     */
    public init(scrollDirection: UICollectionView.ScrollDirection = .vertical) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        super.init(collectionViewLayout: layout)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("You most likely have a Storyboard controller that uses this class, please remove any instance of D_ListController or sublasses of this component from your Storyboard files.")
    }
    
}






