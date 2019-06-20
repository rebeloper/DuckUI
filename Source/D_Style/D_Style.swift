//
//  D_Style.swift
//  DuckUI
//
//  Created by Alex Nagy on 12/06/2019.
//

import UIKit

/// Represents view style with a closure that configures the view.
public struct D_Style<View: UIView> {
    
    public let style: (View) -> Void
    
    public init(style: @escaping (View) -> Void) {
        self.style = style
    }
    
    /// Applies self to the view.
    public func apply(to view: View) {
        style(view)
    }
    
    /// Style that does nothing (keeps the default/native style).
    public static var native: D_Style<View> {
        return D_Style { _ in }
    }
}

extension UIView {
    
    /// For example: `let nameLabel = UILabel(style: Stylesheet.Profile.name)`.
    public convenience init<V>(style: D_Style<V>) {
        self.init(frame: .zero)
        apply(style)
    }
    
    /// Applies the given style to self.
    public func apply<V>(_ style: D_Style<V>) {
        guard let view = self as? V else {
            print("💥 Could not apply style for \(V.self) to \(type(of: self))")
            return
        }
        style.apply(to: view)
    }
    
    /// Returns self with the style applied. For example: `let nameLabel = UILabel().styled(with: Stylesheet.Profile.name)`.
    public func styled<V>(with style: D_Style<V>) -> Self {
        guard let view = self as? V else {
            print("💥 Could not apply style for \(V.self) to \(type(of: self))")
            return self
        }
        style.apply(to: view)
        return self
    }
}

extension D_Style {
    
    /// Marges two styles together.
    public func adding<V>(_ other: D_Style<V>) -> D_Style {
        return D_Style {
            self.apply(to: $0)
            other.apply(to: $0 as! V)
        }
    }
    
    /// Returns current style modified by the given closure.
    public func modifying(_ style: @escaping (View) -> Void) -> D_Style {
        return D_Style {
            self.apply(to: $0)
            style($0)
        }
    }
    
    /// Modify current style in place.
    public mutating func modify(_ style: @escaping (View) -> Void) {
        self = modifying(style)
    }
}
