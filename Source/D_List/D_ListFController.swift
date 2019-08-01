//
//  D_ListFController.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/**
 D_ListFController helps register, dequeues, and sets up cells with their respective items to render in a standard single section list.
 ## Generics ##
 C: the cell type that this list will register and dequeue.
 
 CI: the item type that each cell will visually represent.
 
 H: the header type above the section of cells.
 
 HI: the item type that the header will visually represent.
 
 F: the footer type above the section of cells.
 
 FI: the item type that the footer will visually represent.
 
 */
open class D_ListFController<C: D_ListCell<CI>, CI, F: D_ListFooter<FI>, FI>: UICollectionViewController {
    
    public let hud = Hud.create()
    
    /// An array of CI objects this list will render. When using items.append, you still need to manually call reloadData.
    open var items = [CI]() {
        didSet {
            if let listBackgroundImages = listBackgroundImages {
                if items.count > 0 {
                    if currentBackgroundImageName != listBackgroundImages.nonEmptyImageName {
                        guard let nonEmptyImage = UIImage(named: listBackgroundImages.nonEmptyImageName) else { return }
                        addBackground(image: nonEmptyImage)
                        currentBackgroundImageName = listBackgroundImages.nonEmptyImageName
                    }
                } else {
                    if currentBackgroundImageName != listBackgroundImages.emptyImageName {
                        guard let emptyImage = UIImage(named: listBackgroundImages.emptyImageName) else { return }
                        addBackground(image: emptyImage)
                        currentBackgroundImageName = listBackgroundImages.emptyImageName
                    }
                }
            }
            collectionView.reloadData()
        }
    }
    
    /// An array of FI objects this list will render as the footer. Only the first element will be used by the list. Make sure this array has only one element!
    open var footerItem = [FI]() {
        didSet {
            collectionView.reloadData()
        }
    }
    
    fileprivate var currentBackgroundImageName = ""
    open var listBackgroundImages: D_ListBackgroundImages?
    
    fileprivate let cellId = "cellId"
    fileprivate let footerId = "footerId"
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        collectionView.register(C.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(F.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerId)
        
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
        collectionView.contentInset = UIEdgeInsets(top: topViewHeight, left: leadingViewWidth, bottom: bottomViewHeight, right: trailingViewWidth)
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
        collectionView.contentInset = UIEdgeInsets(top: topViewHeight, left: leadingViewWidth, bottom: bottomViewHeight, right: trailingViewWidth)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.bottomAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.bottomAnchor : view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: bottomViewHeight).isActive = true
    }
    
    /// Customize your leading view here
    open var leadingView = UIView().setBackground(color: .white)
    open var leadingViewWidth: CGFloat = 0
    
    /// Adds the collection view a leading view
    open func addLeadingView(width: CGFloat, safeArea: Bool = true) {
        leadingViewWidth = width
        collectionView.contentInset = UIEdgeInsets(top: topViewHeight, left: leadingViewWidth, bottom: bottomViewHeight, right: trailingViewWidth)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(leadingView)
        leadingView.translatesAutoresizingMaskIntoConstraints = false
        
        leadingView.leadingAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor).isActive = true
        leadingView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        leadingView.widthAnchor.constraint(equalToConstant: leadingViewWidth).isActive = true
    }
    
    /// Customize your trailing view here
    open var trailingView = UIView().setBackground(color: .white)
    open var trailingViewWidth: CGFloat = 0
    
    /// Adds the collection view a trailing view
    open func addTrailingView(width: CGFloat, safeArea: Bool = true) {
        trailingViewWidth = width
        collectionView.contentInset = UIEdgeInsets(top: topViewHeight, left: leadingViewWidth, bottom: bottomViewHeight, right: trailingViewWidth)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
        
        view.addSubview(trailingView)
        trailingView.translatesAutoresizingMaskIntoConstraints = false
        
        trailingView.trailingAnchor.constraint(equalTo: safeArea ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor).isActive = true
        trailingView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        trailingView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        trailingView.widthAnchor.constraint(equalToConstant: trailingViewWidth).isActive = true
    }
    
    /// Adds the collection view a background image
    open func addBackground(image: UIImage) {
        collectionView.backgroundView?.removeSubviews()
        let imageView = UIImageView(image: image.withRenderingMode(.alwaysOriginal))
        imageView.contentMode = .scaleAspectFill
        collectionView.backgroundView = imageView
        collectionView.backgroundView?.layer.zPosition = -1
        collectionView.bounces = false
    }
    
    /// Override this to manually set up your cell with custom behavior.
    open func setupCell(_ cell: C) {}
    
    /// Override this to manually set up your footer with custom behavior.
    open func setupFooter(_ footer: F) {}
    
    /// Access the footer of the collection view
    open var footer: D_ListFooter<FI>?
    
    /// D_List controller automatically dequeues your C cell and sets the correct item object on it.
    override open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! C
        cell.item = items[indexPath.row]
        setupCell(cell)
        return cell
    }
    
    override open func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerId, for: indexPath) as! F
        setupFooter(footer)
        footer.item = footerItem.first
        self.footer = footer
        return footer
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
        fatalError("You most likely have a Storyboard controller that uses this class, please remove any instance of D_ListFController or sublasses of this component from your Storyboard files.")
    }
    
}






