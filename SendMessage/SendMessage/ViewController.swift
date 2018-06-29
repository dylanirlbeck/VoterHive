//
//  ViewController.swift
//  SendMessage
//
//  Created by AK Alilonu on 6/29/18.
//  Copyright © 2018 AK Alilonu. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessage(_ sender: Any) {
        
        let messageVC = MFMessageComposeViewController()
            
            messageVC.body = "Hello!";
            messageVC.recipients = ["6028104885"]
        messageVC.messageComposeDelegate = self as? MFMessageComposeViewControllerDelegate;
            
            self.present(messageVC, animated: false, completion: nil)
        }
        
        func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
            switch (result.rawValue) {
            case MessageComposeResult.cancelled.rawValue:
                print("Message was cancelled")
                self.dismiss(animated: true, completion: nil)
            case MessageComposeResult.failed.rawValue:
                print("Message failed")
                self.dismiss(animated: true, completion: nil)
            case MessageComposeResult.sent.rawValue:
                print("Message was sent")
                self.dismiss(animated: true, completion: nil)
            default:
                break;
            }
        }
}

