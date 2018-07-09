//
//  SecondOpeningScreen.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 6/29/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import SwiftMultiSelect
import BEMCheckBox
import MessageUI
import ContactsUI



class SecondOpeningScreen: UIViewController, SwiftMultiSelectDelegate, UITableViewDelegate, UITableViewDataSource, MFMessageComposeViewControllerDelegate {
    
    
    var contactArray = [personInfo]()
    struct personInfo {
        var name: String?
        var phone: String?
        var checkMarks: Int?
    }
    var counter: Int = 0
    var numbRows: Int = 3
    var labelArray = ["VoterHive", "VoterHive", "VoterHive"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbRows
    }
    
    @IBOutlet weak var contactTableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainScreenTableViewCell
        cell.nameField.text = labelArray[counter]
        
        cell.viewController = self
        
        counter += 1
        return (cell)
        
    }
    func displayMessages(body: String, number: String) {
        let messageText = body
        let phoneNumber = number
        
        // checks to see if we're allowed to send texts
        if !MFMessageComposeViewController.canSendText() {
            print("SMS services are not available")
        }
        
        // composes message

        let messageVC = MFMessageComposeViewController()
        messageVC.body = messageText;
        messageVC.recipients = [phoneNumber]
        messageVC.messageComposeDelegate = self as? MFMessageComposeViewControllerDelegate;
        
        // displays message
       
        self.present(messageVC, animated: true, completion: nil)
        
      
        
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        print("Dismiss message")
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func getContacts() {
//            var thisnumber: String = ""
//            var thisname: String = ""
//            let status = CNContactStore.authorizationStatus(for: CNEntityType.contacts) as CNAuthorizationStatus
//
//            if status == CNAuthorizationStatus.denied {
//
//                return
//            }
//            let contactStore = CNContactStore()
//            let keysToFetch = [
//                CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
//                CNContactPhoneNumbersKey ] as [Any]
//
//
//            let request = CNContactFetchRequest(keysToFetch:keysToFetch as! [CNKeyDescriptor])
//            do {
//                try contactStore.enumerateContacts(with: request, usingBlock: { (contact:CNContact, stop:UnsafeMutablePointer<ObjCBool>) -> Void in
//
//                    for num in contact.phoneNumbers {
//                        thisnumber = (num.value as! CNPhoneNumber).value(forKey: "digits") as! String
//
//                    }
//
//
//
//
//                })
//            } catch {
//                //catch
//            }
     
        var results: [CNContact] = []
        
        let fetchRequest = CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey as CNKeyDescriptor, CNContactFamilyNameKey as CNKeyDescriptor, CNContactMiddleNameKey as CNKeyDescriptor, CNContactEmailAddressesKey as CNKeyDescriptor,CNContactPhoneNumbersKey as CNKeyDescriptor])
        
        fetchRequest.sortOrder = CNContactSortOrder.userDefault
        
        let store = CNContactStore()
        var number = -1
        var phoneNumber : String = ""
        do {
            try store.enumerateContacts(with: fetchRequest, usingBlock: { (contact, stop) -> Void in
                
                let phoneNumbers = contact.phoneNumbers
                for phnCtr in phoneNumbers
                {
                    
                    number += 1
                    phoneNumber = (phnCtr.value as! CNPhoneNumber).value(forKey: "digits") as! String
                    
                    let currentPerson = personInfo(name: contact.givenName, phone: phoneNumber, checkMarks: 0)
                    self.contactArray.append(currentPerson)
                   
                    }
                //print(self.contactArray[number].name)
                //print(self.contactArray[number].phone)
//                for count in self.contactArray {
//
//                    if (count.name == contact.givenName) {
//
//                    }
//                    else {
//
//                        print(currentPerson.name)
//                    }
//
//                }
//
                
                
                results.append(contact)
                
            })
        }
        catch let error as NSError {
            print(error.localizedDescription)
        }
            
        
       

    }
        
    @IBAction func buttonAction(_ sender: Any) {
        SwiftMultiSelect.Show(to: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        contactTableView.dataSource = self
        contactTableView.delegate = self
        contactTableView.rowHeight = 140
        print(getState(of: "Georgia").name)
        
        getContacts()
//        for int in contactArray {
//            print(int.name)
//        }
        
        //Register delegate
       
        SwiftMultiSelect.dataSourceType = .phone
        SwiftMultiSelect.delegate       = self
        
        
        
    }
    
  
    
    @IBAction func loadContactStuff(_ sender: Any) {
      let sms: String = "sms:+=12246882592&body=Hello Abc How are You I am ios developer."
      let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
      UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
   }
    
    //MARK: - SwiftMultiSelectDelegate
    
    //User write something in searchbar
    func userDidSearch(searchString: String) {
        
        print("User is looking for: \(searchString)")
        
    }
    
    //User did unselect an item
    func swiftMultiSelect(didUnselectItem item: SwiftMultiSelectItem) {
        print("row: \(item.title) has been deselected!")
    }
    
    //User did select an item
    func swiftMultiSelect(didSelectItem item: SwiftMultiSelectItem) {
        print("item: \(item.title) has been selected!")
    }
    
    //User did close controller with no selection
    func didCloseSwiftMultiSelect() {
        print("no items selected")
    }
    
    //User completed selection
    func swiftMultiSelect(didSelectItems items: [SwiftMultiSelectItem]) {
        
        print("you have been selected: \(items.count) items!")
        
        numbRows = items.count
        
        var setTableName = ""
        var index = 0
        for item in items{
            //print(item.userInfo)
            //print(item.title)
           
                
            labelArray[index] = item.title
            index += 1
                
            
            
            
        }
        self.counter = 0
        contactTableView.reloadData()
        
    }
    
}
