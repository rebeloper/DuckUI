//
//  D_Color.swift
//  Bond
//
//  Created by Alex Nagy on 29/06/2019.
//

import UIKit

public struct D_Color {
    public struct Xcode10 {
        public static let black = UIColor(white: 0.0, alpha: 1.0)
        public static let darkGray = UIColor(white: 0.333, alpha: 1.0)
        public static let lightGray = UIColor(white: 0.667, alpha: 1.0)
        public static let white = UIColor(white: 1.0, alpha: 1.0)
        public static let gray = UIColor(white: 0.5, alpha: 1.0)
        public static let red = UIColor(red: 225/255, green: 0/255, blue: 0/255, alpha: 1.0)
        public static let green = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0)
        public static let blue = UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0)
        public static let cyan = UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0)
        public static let yellow = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1.0)
        public static let magenta = UIColor(red: 255/255, green: 0/255, blue: 255/255, alpha: 1.0)
        public static let orange = UIColor(red: 255/255, green: 122/255, blue: 255/255, alpha: 1.0)
        public static let purple = UIColor(red: 122/255, green: 0/255, blue: 122/255, alpha: 1.0)
        public static let brown = UIColor(red: 153/255, green: 102/255, blue: 51/255, alpha: 1.0)
        public static let clear = UIColor(white: 0.0, alpha: 0.0)
    }
    // reference: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/
    public struct Xcode11 {
        public struct Light {
            public static let blue = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0)
            public static let gray = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1.0)
            public static let green = UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1.0)
            public static let indigo = UIColor(red: 88/255, green: 86/255, blue: 214/255, alpha: 1.0)
            public static let orange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1.0)
            public static let pink = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1.0)
            public static let purple = UIColor(red: 175/255, green: 82/255, blue: 222/255, alpha: 1.0)
            public static let red = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1.0)
            public static let teal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1.0)
            public static let yellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1.0)
            
            public static let gray1 = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1.0)
            public static let gray2 = UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1.0)
            public static let gray3 = UIColor(red: 199/255, green: 199/255, blue: 204/255, alpha: 1.0)
            public static let gray4 = UIColor(red: 209/255, green: 209/255, blue: 214/255, alpha: 1.0)
            public static let gray5 = UIColor(red: 229/255, green: 229/255, blue: 234/255, alpha: 1.0)
            public static let gray6 = UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1.0)
        }
        
        public struct Dark {
            public static let blue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1.0)
            public static let gray = UIColor(red: 152/255, green: 152/255, blue: 157/255, alpha: 1.0)
            public static let green = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1.0)
            public static let indigo = UIColor(red: 94/255, green: 92/255, blue: 230/255, alpha: 1.0)
            public static let orange = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1.0)
            public static let pink = UIColor(red: 255/255, green: 55/255, blue: 95/255, alpha: 1.0)
            public static let purple = UIColor(red: 191/255, green: 90/255, blue: 242/255, alpha: 1.0)
            public static let red = UIColor(red: 255/255, green: 69/255, blue: 58/255, alpha: 1.0)
            public static let teal = UIColor(red: 100/255, green: 210/255, blue: 255/255, alpha: 1.0)
            public static let yellow = UIColor(red: 255/255, green: 214/255, blue: 10/255, alpha: 1.0)
            
            public static let gray1 = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1.0)
            public static let gray2 = UIColor(red: 99/255, green: 99/255, blue: 102/255, alpha: 1.0)
            public static let gray3 = UIColor(red: 72/255, green: 72/255, blue: 74/255, alpha: 1.0)
            public static let gray4 = UIColor(red: 58/255, green: 58/255, blue: 60/255, alpha: 1.0)
            public static let gray5 = UIColor(red: 44/255, green: 44/255, blue: 46/255, alpha: 1.0)
            public static let gray6 = UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 1.0)
        }
        
        public struct Accessible {
            public struct Light {
                public static let blue = UIColor(red: 0/255, green: 64/255, blue: 221/255, alpha: 1.0)
                public static let gray = UIColor(red: 105/255, green: 105/255, blue: 110/255, alpha: 1.0)
                public static let green = UIColor(red: 36/255, green: 138/255, blue: 61/255, alpha: 1.0)
                public static let indigo = UIColor(red: 54/255, green: 52/255, blue: 163/255, alpha: 1.0)
                public static let orange = UIColor(red: 201/255, green: 52/255, blue: 0/255, alpha: 1.0)
                public static let pink = UIColor(red: 211/255, green: 15/255, blue: 69/255, alpha: 1.0)
                public static let purple = UIColor(red: 137/255, green: 68/255, blue: 171/255, alpha: 1.0)
                public static let red = UIColor(red: 215/255, green: 0/255, blue: 21/255, alpha: 1.0)
                public static let teal = UIColor(red: 0/255, green: 113/255, blue: 164/255, alpha: 1.0)
                public static let yellow = UIColor(red: 160/255, green: 90/255, blue: 0/255, alpha: 1.0)
                
                public static let gray1 = UIColor(red: 108/255, green: 108/255, blue: 112/255, alpha: 1.0)
                public static let gray2 = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1.0)
                public static let gray3 = UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1.0)
                public static let gray4 = UIColor(red: 188/255, green: 188/255, blue: 192/255, alpha: 1.0)
                public static let gray5 = UIColor(red: 216/255, green: 216/255, blue: 220/255, alpha: 1.0)
                public static let gray6 = UIColor(red: 235/255, green: 235/255, blue: 240/255, alpha: 1.0)
            }
            
            public struct Dark {
                public static let blue = UIColor(red: 64/255, green: 156/255, blue: 255/255, alpha: 1.0)
                public static let gray = UIColor(red: 152/255, green: 152/255, blue: 157/255, alpha: 1.0)
                public static let green = UIColor(red: 48/255, green: 219/255, blue: 91/255, alpha: 1.0)
                public static let indigo = UIColor(red: 125/255, green: 122/255, blue: 255/255, alpha: 1.0)
                public static let orange = UIColor(red: 255/255, green: 179/255, blue: 64/255, alpha: 1.0)
                public static let pink = UIColor(red: 255/255, green: 100/255, blue: 130/255, alpha: 1.0)
                public static let purple = UIColor(red: 218/255, green: 143/255, blue: 255/255, alpha: 1.0)
                public static let red = UIColor(red: 255/255, green: 105/255, blue: 97/255, alpha: 1.0)
                public static let teal = UIColor(red: 112/255, green: 215/255, blue: 255/255, alpha: 1.0)
                public static let yellow = UIColor(red: 255/255, green: 212/255, blue: 38/255, alpha: 1.0)
                
                public static let gray1 = UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1.0)
                public static let gray2 = UIColor(red: 124/255, green: 124/255, blue: 128/255, alpha: 1.0)
                public static let gray3 = UIColor(red: 84/255, green: 84/255, blue: 86/255, alpha: 1.0)
                public static let gray4 = UIColor(red: 68/255, green: 68/255, blue: 70/255, alpha: 1.0)
                public static let gray5 = UIColor(red: 54/255, green: 54/255, blue: 56/255, alpha: 1.0)
                public static let gray6 = UIColor(red: 36/255, green: 36/255, blue: 38/255, alpha: 1.0)
            }
        }
    }
    
}
