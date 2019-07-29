//
//  D_ListBackgroundImages.swift
//  DuckUI
//
//  Created by Alex Nagy on 29/07/2019.
//

import Foundation

public struct D_ListBackgroundImages {
    public let emptyImageName: String
    public let nonEmptyImageName: String
    
    public init(emptyImageName: String, nonEmptyImageName: String) {
        self.emptyImageName = emptyImageName
        self.nonEmptyImageName = nonEmptyImageName
    }
}
