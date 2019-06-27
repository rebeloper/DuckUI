//
//  D_ListHeaderController.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/**
 ListHeaderController helps register, dequeues, and sets up cells with their respective items to render in a standard single section list.
 ## Generics ##
 T: the cell type that this list will register and dequeue.
 
 U: the item type that each cell will visually represent.
 
 H: the header type above the section of cells.
 
 */
open class D_ListHeaderController<T: D_ListCell<U>, U, H: UICollectionReusableView>: UICollectionViewController {
    
    let hud = Hud.create()
    
    /// An array of U objects this list will render. When using items.append, you still need to manually call reloadData.
    open var items = [U]() {
        didSet {
            collectionView.reloadData()
        }
    }
    
    fileprivate let cellId = "cellId"
    fileprivate let headerId = "headerId"
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        collectionView.register(T.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(H.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        observe()
        bind()
        fetchData()
    }
    
    /// In your custom ListCell classes, just override observe() to observe events.
    open func observe() {}
    
    /// In your custom ListCell classes, just override bind() to bind elements together.
    open func bind() {}
    
    // In your custom ListCell classes, just override fetchData() to manually fetch data on this particular cell. This behavior is highly unrecomended, but may be usefull in a few cases.
    open func fetchData() {}
    
    open var topViewHeight: CGFloat = 0
    open var topView = UIView().setBackground(color: .white)
    
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
    
    /// Adds the collection view a background image
    open func addBackground(image: UIImage) {
        let imageView = UIImageView(image: image.withRenderingMode(.alwaysOriginal))
        imageView.contentMode = .scaleAspectFill
        collectionView.backgroundView = imageView
        collectionView.backgroundView?.layer.zPosition = -1
        collectionView.bounces = false
    }
    
    /// ListHeaderController automatically dequeues your T cell and sets the correct item object on it.
    override open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! T
        cell.item = items[indexPath.row]
        cell.parentController = self
        setupCell(cell)
        return cell
    }
    
    /// Override this to manually set up your cell with custom behavior.
    open func setupCell(_ cell: T) {}
    
    /// Override this to manually set up your header with custom behavior.
    open func setupHeader(_ header: H) {}
    
    open var header: UICollectionReusableView?
    
    override open func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! H
        setupHeader(header)
        self.header = header
        return header
    }
    
    override open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    /// If you don't provide this, headers and footers for UICollectionViewControllers will be drawn above the scroll bar.
    override open func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
        view.layer.zPosition = -1
    }
    
    /**
     Initializes your ListHeaderController with a plain UICollectionViewFlowLayout.
     
     ## Parameters ##
     scrollDirection: direction that your cells will be rendered
     
     */
    public init(scrollDirection: UICollectionView.ScrollDirection = .vertical) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        super.init(collectionViewLayout: layout)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("You most likely have a Storyboard controller that uses this class, please remove any instance of D_ListHeaderController or sublasses of this component from your Storyboard files.")
    }
    
}





