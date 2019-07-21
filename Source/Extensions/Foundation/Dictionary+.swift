//
//  Dictionary+.swift
//  DuckUI
//
//  Created by Alex Nagy on 21/07/2019.
//

import Foundation

extension Dictionary {
    public mutating func update(with other:Dictionary) {
        for (key,value) in other {
            self.updateValue(value, forKey:key)
        }
    }
}
