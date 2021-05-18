//
//  ColorConstant.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import UIKit

public extension UIColor {
    @objc
    static var backgroundColor: UIColor {
        return UIColor(named: "backgroundColor")!
    }
    
    @objc
    static var backgroundTextColor: UIColor {
        return UIColor(named: "backgroundTextColor")!
    }
    
    @objc
    static var textColor: UIColor {
        return UIColor(named: "textColor")!
    }
    
    
    
}
