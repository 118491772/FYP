//
//  DesignableView.swift
//  FYP
//
//  Created by Ben Roberts on 24/11/2021.
//
//Code for Login Screen


import UIKit

//https://github.com/gtokman/Login-Screen-UI/blob/master/LoginExample/DesignableView.swift

// 4 properties, shadow colour, radius, capicity Y offset
@IBDesignable
class DesignableView: UIView {
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }

    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }

    @IBInspectable var shadowOffsetY: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = shadowOffsetY
        }
    }
}
