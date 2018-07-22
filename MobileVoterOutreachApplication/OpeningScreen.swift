//
//  ViewController.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 6/26/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import SCLAlertView
import CoreData

class OpeningScreen: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var loginButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(removeSpecialCharacters(from: "West Virginia"))
        //UserName.delegate = self
        
        //check to see if the user's login information is stored, if so take straight back to app
//        let aRequest: NSFetchRequest<Loginformation> = Loginformation.fetchRequest()
//
//        do {
//            var userName: String = ""
//            var passWord: String = ""
//            let loginArrayCore = try PersistenceService.context.fetch(aRequest)
//            if (loginArrayCore.count > 0) {
//                userName = loginArrayCore[0].userEmail!
//                passWord = loginArrayCore[0].userPass!
//                Auth.auth().signIn(withEmail: userName, password: passWord, completion: { (user, error) in
//                    if user != nil {
//                        //Sign in successful
//                        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeScreen") as! SecondOpeningScreen
//                        let transition = CATransition()
//                        transition.duration = 0.5
//                        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
//                        transition.type = kCATransitionReveal
//                        transition.subtype = kCATransitionFromRight
//                        self.view.window!.layer.add(transition, forKey: kCATransition)
//                        self.present(popOverVC, animated: false, completion: nil)
//                    } else
//                    {
//                        if let myError = error?.localizedDescription
//                        {
//                            print(myError)
//                            let alert = SCLAlertView()
//                            alert.showError("Error", subTitle: (error?.localizedDescription)!)
//                        } else
//                        {
//                            print("ERROR")
//                        }
//                    }
//                })
//            }
//
//
//        } catch {}
        
       
        
        Password.delegate = self
        UITextField.appearance().keyboardAppearance = .dark
        self.hideKeyboard()
        //makeBottomBorder(UserName)
        //makeBottomBorder(Password)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showRegistration(_ sender: Any) {
        
     
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        
//        self.addChildViewController(popOverVC)
//        popOverVC.view.frame = self.view.frame
//        self.view.addSubview(popOverVC.view)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionReveal
        transition.subtype = kCATransitionFromTop
        view.window!.layer.add(transition, forKey: kCATransition)
        self.present(popOverVC, animated: false, completion: nil)
        //popOverVC.didMove(toParentViewController: self)
        
        
    }
    
    @IBAction func action(_ sender: UIButton) {
        
        if UserName.text != "" && Password.text != ""
        {
            Auth.auth().signIn(withEmail: UserName.text!, password: Password.text!, completion: { (user, error) in
                if user != nil {
                    //Sign in successful
                    let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeScreen") as! SecondOpeningScreen
                    let transition = CATransition()
                    transition.duration = 0.5
                    transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    transition.type = kCATransitionReveal
                    transition.subtype = kCATransitionFromRight
                   
                    self.view.window!.layer.add(transition, forKey: kCATransition)
                    self.present(popOverVC, animated: false, completion: nil)
                } else
                {
                    if let myError = error?.localizedDescription
                    {
                        print(myError)
                        let alert = SCLAlertView()
                        alert.showError("Error", subTitle: (error?.localizedDescription)!)
                    } else
                    {
                        print("ERROR")
                    }
                }
            })
            
    
    
    
    
        }
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
