//
//  Array+.swift
//  DuckUI
//
//  Created by Alex Nagy on 21/07/2019.
//

import Foundation

extension Array {
    
    public func filterDuplicates(includeElement: @escaping (_ lhs:Element, _ rhs:Element) -> Bool) -> [Element]{
        var results = [Element]()
        
        forEach { (element) in
            let existingElements = results.filter {
                return includeElement(element, $0)
            }
            if existingElements.count == 0 {
                results.append(element)
            }
        }
        
        return results
    }
    // let filteredContacts = myContacts.filterDuplicates { $0.name == $1.name && $0.phone == $1.phone }
    
    public func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
