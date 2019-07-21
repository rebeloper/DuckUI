//
//  D_Enums.swift
//  DuckUI
//
//  Created by Alex Nagy on 11/06/2019.
//

import Foundation

public enum D_ViewSafeArea {
    case top, leading, trailing, bottom, vertical, horizontal, all, none
}

public enum D_DividerType {
    case extraSmall, small, normal, medium, large, extraLarge
}

public enum D_LineType {
    case vertical, horizontal
}

public enum D_Padding {
    case top, left, right, bottom, verticalMargins, horizontalMargins, allMargins
}

public enum D_TransitionSubtype {
    case toTop, toBottom, toLeft, toRight
}

public enum D_GradientDirection {
    case leftToRight
    case rightToLeft
    case topToBottom
    case bottomToTop
}
