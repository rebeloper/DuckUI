//
//  The MIT License (MIT)
//
//  Copyright (c) 2018 Srdan Rasic (@srdanrasic)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// A type-erased `LayoutProtocol`.
public protocol AnyLayout: LayoutNode {

    /// Generates the layout and returns the layout's root node.
    func makeAnyLayoutNode(_ compositeRevertable: Revertable) -> LayoutNode
}

/// A type that encapsulates layout, basically anything that can make a layout node.
public protocol LayoutProtocol: AnyLayout {
    associatedtype Node: LayoutNode

    /// Generates the layout and returns the layout's root node.
    func makeLayoutNode(_ compositeRevertable: Revertable) -> Node
}

extension LayoutProtocol {

    public func makeAnyLayoutNode(_ compositeRevertable: Revertable) -> LayoutNode {
        return makeLayoutNode(compositeRevertable)
    }
}

extension AnyLayout {

    @discardableResult
    public func layout(in container: UIView) -> Revertable {
        let revertable = Revertable()
        revertable.append(makeAnyLayoutNode(revertable).layout(in: container))
        return revertable
    }
}
