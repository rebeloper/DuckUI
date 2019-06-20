//
//  UILabel+.swift
//  DuckUI
//
//  Created by Alex Nagy on 11/06/2019.
//

import UIKit

extension UILabel {
    
    @discardableResult
    open func background(_ color: UIColor) -> UILabel {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    open func setMultiline() -> UILabel {
        numberOfLines = 0
        return self
    }
    
    @discardableResult
    open func text(_ text: String?) -> UILabel {
        self.text = text
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    @discardableResult
    open func text(_ color: UIColor) -> UILabel {
        self.textColor = color
        return self
    }
    
    @discardableResult
    open func shadow(_ color: UIColor?) -> UILabel {
        self.shadowColor = color
        return self
    }
    
    @discardableResult
    open func shadow(_ offset: CGSize) -> UILabel {
        self.shadowOffset = offset
        return self
    }
    
    @discardableResult
    open func textAlignment(_ textAlignment: NSTextAlignment) -> UILabel {
        self.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    open func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> UILabel {
        self.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    open func attributed(_ text: NSAttributedString) -> UILabel {
        self.attributedText = text
        return self
    }
    
    @discardableResult
    open func highlightedText(_ color: UIColor?) -> UILabel {
        self.highlightedTextColor = color
        return self
    }
    
    @discardableResult
    open func isHighlighted(_ isHighlighted: Bool) -> UILabel {
        self.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    open func isUserInteractionEnabled(_ enabled: Bool) -> UILabel {
        self.isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult
    open func isEnabled(_ enabled: Bool) -> UILabel {
        self.isEnabled = enabled
        return self
    }
    
    @discardableResult
    open func numberOfLines(_ numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    open func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> UILabel {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    open func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> UILabel {
        self.baselineAdjustment = baselineAdjustment
        return self
    }
    
    @discardableResult
    open func minimumScaleFactor(_ factor: CGFloat) -> UILabel {
        self.minimumScaleFactor = factor
        return self
    }
    
    @discardableResult
    open func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> UILabel {
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }
    
    @discardableResult
    open func preferredMaxLayoutWidth(_ width: CGFloat) -> UILabel {
        self.preferredMaxLayoutWidth = width
        return self
    }
}
