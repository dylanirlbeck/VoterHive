//
//  ViewController.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 6/26/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit


class OpeningScreen: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var loginButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserName.delegate = self
        Password.delegate = self
        UITextField.appearance().keyboardAppearance = .dark
        self.hideKeyboard()
        makeBottomBorder(UserName)
        makeBottomBorder(Password)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeBottomBorder(_ textField: UITextField) {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: textField.frame.size.height - width, width: textField.frame.size.width, height: textField.frame.size.height)
        
        border.borderWidth = width
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
        
    }
}
