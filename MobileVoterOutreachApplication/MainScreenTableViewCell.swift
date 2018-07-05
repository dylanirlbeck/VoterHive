//
//  MainScreenTableViewCell.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/3/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import UIKit
import BEMCheckBox

class MainScreenTableViewCell: UITableViewCell, BEMCheckBoxDelegate {

    @IBOutlet weak var currentElection: UILabel!
    
    @IBOutlet weak var hasVoted: UILabel!
    
    @IBOutlet weak var isRegistered: UILabel!
    
    @IBOutlet weak var isVoting: UILabel!
    
    @IBOutlet weak var viewMessages: UIButton!
    
    @IBOutlet weak var nameField: UILabel!
    
    @IBOutlet weak var ThirdCheck: BEMCheckBox!
    
    @IBOutlet weak var SecondCheck: BEMCheckBox!
    
    @IBOutlet weak var FirstCheck: BEMCheckBox!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
 
    
    @IBAction func thirdCheckClicked(_ sender: Any) {
        
        if (FirstCheck.on == false) {
            ThirdCheck.setOn(false, animated: true)
        }
        // run a function
        
        print ("User tapped")
        
    }
    
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
