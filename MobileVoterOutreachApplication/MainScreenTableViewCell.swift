//
//  MainScreenTableViewCell.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/3/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit
import BEMCheckBox
import SCLAlertView
import MessageUI

class MainScreenTableViewCell: UITableViewCell, BEMCheckBoxDelegate  {
    
    

    
    @IBOutlet weak var currentElection: UILabel!
    
    @IBOutlet weak var hasVoted: UILabel!
    
    @IBOutlet weak var isRegistered: UILabel!
    
    @IBOutlet weak var isVoting: UILabel!
    
    @IBOutlet weak var viewMessages: UIButton!
    
    @IBOutlet weak var nameField: UILabel!
    
    @IBOutlet weak var ThirdCheck: BEMCheckBox!
    
    @IBOutlet weak var SecondCheck: BEMCheckBox!
    
    @IBOutlet weak var FirstCheck: BEMCheckBox!
    
    weak var viewController : SecondOpeningScreen?

    var currentPerson: personInfo = personInfo(name: "VoterHive", phone: "12344567891", checkMarks: 0)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    @IBAction func thirdCheckClicked(_ sender: Any) {
        
        
        // run a function
        if (ThirdCheck.on == true) {
            ThirdCheck.setOn(false, animated: false)
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: false
            )
            
            let alertView = SCLAlertView(appearance: appearance)
            alertView.addButton("Cancel") {
                alertView.hideView()
            }
            alertView.addButton("Reach Out") {
                //put code for SMS Voting message here
                if self.currentPerson.state.canVoteEarly {
                    self.viewController?.displayMessages(body: "Have you requested your early ballot?", number: (self.currentPerson.phone) )
                }
                else {
                    self.viewController?.displayMessages(body: "Will you be able to vote there in person?", number: (self.currentPerson.phone) )
                }
            }
            alertView.addButton("Check their Mail-In Ballot") {
                self.viewController?.displayMessages(body: "You can check your early ballot status here: \(self.currentPerson.state.checkMailInBallotLink)", number: (self.currentPerson.phone) )
            }
            alertView.addButton("Find Their Polling Place") {
                self.viewController?.displayMessages(body: "You may not be able to vote early in \(self.currentPerson.state.name), but you can find your polling place with this website and vote for someone who'll fix that: \(self.currentPerson.state.findPollingPlaceLink)", number: (self.currentPerson.phone) )
            }
            alertView.addButton("Get Their Mail-In Ballot") {
                self.viewController?.displayMessages(body: "You can ask for your mail-in ballot here: \(self.currentPerson.state.requestMailInBallotLink)", number: (self.currentPerson.phone) )
            }
            alertView.addButton("Voted!") {
                self.ThirdCheck.setOn(true, animated: true)
                if (self.FirstCheck.on == false || self.SecondCheck.on == false ) {
                    self.ThirdCheck.setOn(false, animated: true)
                }
            }
            
            alertView.showSuccess("Voted?", subTitle: "Has \(self.currentPerson.name) turned in their early ballot? Make sure they cast their ballot on time!")
        } else if (ThirdCheck.on == false) {
            ThirdCheck.setOn(true, animated: false)
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: false
            )
            
            let alertView = SCLAlertView(appearance: appearance)
            alertView.addButton("Cancel") {
                alertView.hideView()
            }
            alertView.addButton("Erase") {
                self.ThirdCheck.setOn(false, animated: true)
               
            }
            alertView.showSuccess("Voted?", subTitle: "Do you want to erase this contact's Voted checkmark?")
            print("User tried to delete Voted check")
        }
        else {
            
        }
        
        print ("User tapped third check")
        
    }
    
    

    
    @IBAction func firstCheckClicked(_ sender: Any) {
        
       
        // run a function
        //SCLAlertView().showSuccess("Voting", subTitle: "Is \(self.currentPerson.name) voting? If you have not done so, please click the 'Contact' button below to send a message. If you have heard back with a confirmation, please select Done")
        if (FirstCheck.on == true) {
        FirstCheck.setOn(false, animated: false)
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
            kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
            kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
            showCloseButton: false
        )
        
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton("Cancel") {
            alertView.hideView()
        }
            
        alertView.addButton("Reach Out") {
            print("First reach out clicked")
            var phoneNumber: String = ""
            if (self.currentPerson.name == "VoterHive") {
                return
            }
            if ((self.viewController?.contactArray.count)! > 0) {
            for contact in (self.viewController?.contactArray)! {
                var nameFieldString: String = self.nameField.text as! String
                if (contact.name.uppercased().trimmingCharacters(in: .whitespaces) == (nameFieldString.uppercased().trimmingCharacters(in: .whitespaces))) {
                    phoneNumber = contact.phone
                    break
                }
            }
            }
            self.viewController?.displayMessages(body: "Hey, \(self.currentPerson.name), I'm using this app VoterHive to see if my friends are voting Democratic for the upcoming November midterms. Are you going to vote for Democrats?", number: (self.currentPerson.phone) )
                        //put code for SMS Voting message here
            
        }
            
        alertView.addButton("Voting!") {
            self.FirstCheck.setOn(true, animated: true)
            var num = 0
            for count in (self.viewController?.contactArray)! {
                if (count.name == self.nameField.text) {
                    self.viewController?.contactArray[num].checkMarks = 1
                }
                num += 1
            }
        }
        
            alertView.showSuccess("Voting?", subTitle: "Text \(String(describing: self.currentPerson.name)) to ask them if they're voting for Democrats in November. Remember, elections have consequences!")
        } else if (FirstCheck.on == false) {
            FirstCheck.setOn(true, animated: false)
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: false
            )
            
            let alertView = SCLAlertView(appearance: appearance)
            alertView.addButton("Cancel") {
                alertView.hideView()
            }
            alertView.addButton("Erase") {
                self.FirstCheck.setOn(false, animated: true)
            }
            alertView.showSuccess("Voting?", subTitle: "Do you want to erase \(self.currentPerson.name)'s check mark?")
            print("User tried to delete voting check")
        }
        else {
            
        }
        if (FirstCheck.on == false || SecondCheck.on == false) {
            ThirdCheck.setOn(false, animated: true)
        }
        
        
        
        
        
     
        
        
    }
    
    
    @IBAction func secondCheckClicked(_ sender: Any) {
      
        
      
        //this condition happens the first time someone clicks the check (automatically turns it on, so have to treat this case as if it was on and turn it off immediately to show alert)
        if (SecondCheck.on == true) {
            SecondCheck.setOn(false, animated: false)
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: false
            )
            
            let alertView = SCLAlertView(appearance: appearance)
            alertView.addButton("Cancel") {
                alertView.hideView()
            }
            alertView.addButton("Reach Out") {
                //put code for SMS Voting message here
                 self.viewController?.displayMessages(body: "Which state do you want to vote in? Are you registered to vote there?", number: (self.currentPerson.phone) )
            }
            let txt = alertView.addTextField("Enter \(self.currentPerson.name)'s state")
            alertView.addButton("Register \(self.currentPerson.name)") {
                //put code for SMS Voting message hereif self.currentPerson.state.canRegisterOnline {
                    self.viewController?.displayMessages(body: "You can register to vote here: \(self.currentPerson.state.registerToVoteLink)", number: (self.currentPerson.phone) )
                }
                else {
                    self.viewController?.displayMessages(body: "You can't register to vote online in \(self.currentPerson.state.name), but you should vote for somebody who'll change that. Get the process started by going here: /(self.currentPerson.state.registerToVoteLink)", number: (self.currentPerson.phone) )
                }
            }
            alertView.addButton("Check Their Registration") {
                self.viewController?.displayMessages(body: "Go here to see if you're registered to vote: \(self.currentPerson.state.checkRegistrationLink)", number: (self.currentPerson.phone) )
            }
            alertView.addButton("Registered!") {
                self.SecondCheck.setOn(true, animated: true)
                if (self.FirstCheck.on == false) {
                    self.SecondCheck.setOn(false, animated: true)
                }
                print(txt.text)
            }
          
            
            
            alertView.showSuccess("Registered?", subTitle: "Ask \(self.currentPerson.name) if they're registered to vote in their state. If they're not registered, they can't vote!")
        } else if (SecondCheck.on == false) {
            SecondCheck.setOn(true, animated: false)
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: false
            )
            
            let alertView = SCLAlertView(appearance: appearance)
            alertView.addButton("Cancel") {
                alertView.hideView()
            }
            alertView.addButton("Erase") {
                self.SecondCheck.setOn(false, animated: true)
            }
            alertView.showSuccess("Registered?", subTitle: "Do you want to erase this contact's Registered checkmark?")
            print("User tried to delete registered check")
        }
        else {
            
        }
        // run a function
        if (FirstCheck.on == false) {
            SecondCheck.setOn(false, animated: true)
        }
        print ("User tapped second check")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
