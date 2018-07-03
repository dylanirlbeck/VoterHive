//
//  ViewController.swift
//  SendMessage
//
//  Created by AK Alilonu on 6/29/18.
//  Copyright © 2018 AK Alilonu. All rights reserved.
//

import UIKit
import MessageUI
import Messages

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        print("Hi!")
        if !MFMessageComposeViewController.canSendText() {
            print("SMS services are not available")
        }
        
        print("Hello!")
        let messageVC = MFMessageComposeViewController()
        
        messageVC.body = "Hello!";
        messageVC.recipients = ["6028104885"]
        messageVC.messageComposeDelegate = self;
        
        self.present(messageVC, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
