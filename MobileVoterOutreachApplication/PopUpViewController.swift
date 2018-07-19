//
//  PopUpViewController.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/14/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit
import TextFieldEffects
import Firebase
import SCLAlertView
import CoreData

class PopUpViewController: UIViewController {

    @IBOutlet weak var emailField: IsaoTextField!
    
    @IBOutlet weak var firstPassField: IsaoTextField!
    
    @IBOutlet weak var confirmPassField: IsaoTextField!
    
    @IBAction func signUpButtonClick(_ sender: Any) {
        if (firstPassField.text != confirmPassField.text && firstPassField.text != "") {
            let newAlert = SCLAlertView()
            newAlert.showError("Error", subTitle: "Please enter the same password")
            //do some alert to tell user that's not ok.
            return
        }
        Auth.auth().createUser(withEmail: emailField.text!, password: confirmPassField.text!, completion: { (user, error) in
            if user != nil {
                //Sign in successful
                let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeScreen") as! SecondOpeningScreen
                let transition = CATransition()
                transition.duration = 0.5
                transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                transition.type = kCATransitionReveal
                transition.subtype = kCATransitionFromRight
                let person = Loginformation(context: PersistenceService.context)
                person.userEmail = self.emailField.text!
                person.userPass = self.confirmPassField.text!
                print("added person to core data and firebase")
                PersistenceService.saveContext()
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
    @IBAction func goBack(_ sender: Any) {
        let openingScreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomePage") as! OpeningScreen
        
            let transition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            transition.type = kCATransitionReveal
            transition.subtype = kCATransitionFromBottom
        view.window!.layer.add(transition, forKey: kCATransition)
        self.dismiss(animated: false, completion: nil)
        
        
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboard()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
