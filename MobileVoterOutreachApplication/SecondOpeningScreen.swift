//
//  SecondOpeningScreen.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 6/29/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import SwiftMultiSelect
import BEMCheckBox


class SecondOpeningScreen: UIViewController, SwiftMultiSelectDelegate, UITableViewDelegate, UITableViewDataSource, BEMCheckBoxDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    @IBOutlet weak var contactTableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainScreenTableViewCell
        cell.nameField.text = "Dylan"
        
        return (cell)
        
        
    }
    
    
    
    @IBAction func buttonAction(_ sender: Any) {
        SwiftMultiSelect.Show(to: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        contactTableView.dataSource = self
        contactTableView.delegate = self
        contactTableView.rowHeight = 140
        
      
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
        
        for item in items{
            print(item.string)
        }
        
    }
    
}
