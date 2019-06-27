//
//  D_ListController.swift
//  DuckUI
//
//  Created by Alex Nagy on 27/06/2019.
//

import UIKit

/**
 Convenient list component where a Header class is not required.
 
 ## Generics ##
 T: the cell type that this list will register and dequeue.
 
 U: the item type that each cell will visually represent.
 */

open class D_ListController<T: D_ListCell<U>, U>: D_ListHeaderController<T, U, UICollectionReusableView> {
}


