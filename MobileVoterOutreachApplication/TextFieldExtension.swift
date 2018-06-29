//
//  TextField.swift
//  VoterHubInitApplication
//
//  Created by Dylan  Irlbeck on 6/24/18.
//  Copyright © 2018 Dylan Irlbeck. All rights reserved.
//
//import UIKit
//
//
//extension UITextField {
//
//    @IBInspectable var placeHolderColor: UIColor? {
//        get {
//            return self.placeHolderColor
//        }
//        set {
//            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
//        }
//    }
//
//
//    @IBInspectable var bottomBorderColor: UIColor? {
//        get {
//            return self.bottomBorderColor
//        }
//        set {
//            self.borderStyle = UITextBorderStyle.None;
//            let border = CALayer()
//            let width = CGFloat(0.5)
//            border.borderColor = newValue?.CGColor
//            border.frame = CGRect(x: 0, y: self.frame.size.height - width,   width:  self.frame.size.width, height: self.frame.size.height)
//
//            border.borderWidth = width
//            self.layer.addSublayer(border)
//            self.layer.masksToBounds = true
//
//        }
//    }
//}

