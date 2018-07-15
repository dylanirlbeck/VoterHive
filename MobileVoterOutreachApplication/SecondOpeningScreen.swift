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
    
    
    
    //boolean to set up initial # of table view cells
    var openingBoolean: Bool = true
    
    var contactArray = [personInfo]()
    
    var counter: Int = 0
    
    var lastIndex: Int = 1
    
    var labelArray = [String]()
    
    var currentIndexPathArr = [IndexPath]()
    
    var lastRow: Int = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastIndex
    }
    // to ensure app does not crash on table view reload data
    var tracker: Bool = false
    
    @IBOutlet weak var contactTableView: UITableView!
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainScreenTableViewCell
        while (counter < labelArray.count) {
            cell.nameField.text = labelArray[counter]
            for person in contactArray {
                if (person.name.uppercased().trimmingCharacters(in: .whitespaces) == labelArray[counter].uppercased().trimmingCharacters(in: .whitespaces)) {
                    cell.currentPerson = person
                }
            }
            //add a fill check mark function
            cell.viewController = self
            
            counter += 1
            return(cell)
        }
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle:   UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            //arrStudentName.remove(at: indexPath.row)
            contactTableView.beginUpdates()
            print(labelArray[indexPath.row])
            labelArray.remove(at: indexPath.row)
            contactTableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            lastIndex -= 1
            
            contactTableView.endUpdates()

        }
    }
    
    
    
    // detect when table view has finished loading its data
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let lastVisibleIndexPath = tableView.indexPathsForVisibleRows?.last {
            if indexPath == lastVisibleIndexPath {
                //("this function processed")
                currentIndexPathArr.removeAll()
                tracker = false
                //print(counter)
                
            }
        }
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
                    
                    let currentPerson = personInfo(name: contact.givenName, phone: phoneNumber, checkMarks: 0, state: nil)
                    self.contactArray.append(currentPerson)
                    
                }
                
                
                results.append(contact)
                
            })
        }
        catch let error as NSError {
            print(error.localizedDescription)
        }
        
        
        
        
    }
    
    @IBOutlet weak var addContactsButton: UITableView!
    
    
    @IBAction func buttonAction(_ sender: Any) {
        SwiftMultiSelect.Show(to: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        addContactsButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        
        addContactsButton.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.height)/6).isActive = true
        
        contactTableView.dataSource = self
        contactTableView.delegate = self
        contactTableView.rowHeight = (UIScreen.main.bounds.height)/6
        //print(getState(of: "Illinois").name)
        
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
        
        //print("User is looking for: \(searchString)")
        
    }
    
    //User did unselect an item
    func swiftMultiSelect(didUnselectItem item: SwiftMultiSelectItem) {
        //print("row: \(item.title) has been deselected!")
    }
    
    //User did select an item
    func swiftMultiSelect(didSelectItem item: SwiftMultiSelectItem) {
        //print("item: \(item.title) has been selected!")
    }
    
    //User did close controller with no selection
    func didCloseSwiftMultiSelect() {
        //print("no items selected")
    }
    
    //User completed selection
    func swiftMultiSelect(didSelectItems items: [SwiftMultiSelectItem]) {
        
        
        if (openingBoolean) {
                    lastIndex -= 1
                    openingBoolean = false
                }
        //        //print("you have been selected: \(items.count) items!")
        //
        //        lastIndex = items.count + lastIndex
        //
        //        self.counter = 0
        //
        //        var lastIndexPath = 0
        //
        //        if (currentIndexPathArr.count > 0) {
        //        lastIndexPath = currentIndexPathArr.count - 1
        //        } else {
        //
        //        }
        //
        //        contactTableView.reloadData()
        //        print(contactTableView.numberOfRows(inSection: 0))
        //        print("")
        for item in items{
            labelArray.append(item.title)
        }
        counter = 0
        lastIndex += items.count
        if (lastIndex > 5) {
            lastIndex = 5
        }
        contactTableView.reloadData()
        
        //print(item.userInfo)
        //print(item.title)
        
        //            if (labelArray.count != 0) {
        //            for someString in labelArray {
        //                if (item.title.uppercased().trimmingCharacters(in: .whitespaces) == someString.uppercased().trimmingCharacters(in: .whitespaces)) {
        //
        //                    break
        //                } else {
        //                    labelArray.append(item.title)
        //                    tracker = true
        //                    print("i did not break")
        //                }
        //
        //            }
        //            }
        //            else {
        //                labelArray.append(item.title)
        //            }
        //
        //
        
        
        
        //        print("last index path = " + String(lastIndexPath))
        //        let arrayOfIndexPaths = Array(currentIndexPathArr[lastIndexPath...  ])
        //        lastRow = contactTableView.numberOfRows(inSection: 0)
        //        //let indexPath = IndexPath(row: lastRow, section: 0)
        //        print(arrayOfIndexPaths.count)
        //        contactTableView.reloadRows(at: arrayOfIndexPaths, with: .automatic)
        
    }
    
}
