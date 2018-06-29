//
//  HideKeyBoardExtension.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 6/28/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit

extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}

