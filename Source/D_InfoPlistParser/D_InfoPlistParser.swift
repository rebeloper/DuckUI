//
//  D_InfoPlistParser.swift
//  DuckUI
//
//  Created by Alex Nagy on 31/07/2019.
//

import Foundation

public struct D_InfoPlistParser {
    
    static public func getStringValue(forKey: String) -> String {
        guard let value = Bundle.main.infoDictionary?[forKey] as? String else {
            fatalError("No value found for key '\(forKey)' in the Info.plist file")
        }
        return value
    }
    
    static public func getBundleId() -> String {
        guard let bundleId = Bundle.main.bundleIdentifier else {
            fatalError("could not find bundle id in the Info.plist file")
        }
        return bundleId
    }
    
}
