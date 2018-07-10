//
//  StateLinks.swift
//  MobileVoterOutreachApplication
//
//  Created by AK Alilonu on 7/8/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import Foundation

import UIKit

// registerToVoteLink -> registerToVoteLink
// requestMailInBallotLink -> requestMailInBallotLinkLink

class State {
    var name = String()
    var canRegisterOnline = Bool()
    var registerToVoteLink = String()
    var checkRegistrationLink = String()
    var canVoteEarly = Bool()
    var requestMailInBallotLink = String()
    var checkBallotLink = String()
    var findPollingPlaceLink = String()
    
    func of(_ stateName: String) -> State {
        // completes state initialization
        
        // array of state names
        let stateNamesArray = ["Alabama",
                               "Alaska",
                               "Arizona",
                               "Arkansas",
                               "California",
                               "Colorado",
                               "Connecticut",
                               "Delaware",
                               "District of Columbia",
                               "Florida",
                               "Georgia",
                               "Hawaii",
                               "Idaho",
                               "Illinois",
                               "Indiana",
                               "Iowa",
                               "Kansas",
                               "Kentucky",
                               "Louisiana",
                               "Maine",
                               "Maryland",
                               "Massachusetts",
                               "Michigan",
                               "Minnesota",
                               "Mississippi",
                               "Missouri",
                               "Montana",
                               "Nebraska",
                               "Nevada",
                               "New Hampshire",
                               "New Jersey",
                               "New Mexico",
                               "New York",
                               "North Carolina",
                               "North Dakota",
                               "Ohio",
                               "Oklahoma",
                               "Oregon",
                               "Pennsylvania",
                               "Rhode Island",
                               "South Carolina",
                               "South Dakota",
                               "Tennessee",
                               "Texas",
                               "Utah",
                               "Vermont",
                               "Virginia",
                               "Washington",
                               "West Virginia",
                               "Wisconsin",
                               "Wyoming"]
        
        func makeState(name: String, canRegisterOnline: Bool, registerToVoteLink: String, checkRegistrationLink: String, canVoteEarly: Bool, requestMailInBallotLink: String, checkBallotLink: String, findPollingPlaceLink: String) -> State {
            // initializes a State's Bool values and hardcoded links
            let newState = State()
            newState.name = name
            newState.canRegisterOnline = canRegisterOnline
            newState.registerToVoteLink = registerToVoteLink
            newState.checkRegistrationLink = checkRegistrationLink
            newState.canVoteEarly = canVoteEarly
            newState.requestMailInBallotLink = requestMailInBallotLink
            newState.checkBallotLink = checkBallotLink
            newState.findPollingPlaceLink = findPollingPlaceLink
            return newState
        }
        
        
        // array of state objects
        let statesArray = [makeState(name: "Alabama",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Alaska",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Arizona",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Arkansas",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "California",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Colorado",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Connecticut",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Delaware",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "District of Columbia",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Florida",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Georgia",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Hawaii",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Idaho",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Illinois",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Indiana",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Iowa",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Kansas",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Kentucky",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Louisiana",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Maine",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Maryland",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Massachusetts",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Michigan",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Minnesota",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Mississippi",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Missouri",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Montana",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Nebraska",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Nevada",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "New Hampshire",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "New Jersey",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "New Mexico",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "New York",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "North Carolina",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "North Dakota",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Ohio",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Oklahoma",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Oregon",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Pennsylvania",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Rhode Island",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "South Carolina",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "South Dakota",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Tennessee",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Texas",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Utah",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Vermont",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Virginia",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Washington",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: false,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "West Virginia",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Wisconsin",
                                     canRegisterOnline: true,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: ""),
                           makeState(name: "Wyoming",
                                     canRegisterOnline: false,
                                     registerToVoteLink: "",
                                     checkRegistrationLink: "",
                                     canVoteEarly: true,
                                     requestMailInBallotLink: "",
                                     checkBallotLink: "",
                                     findPollingPlaceLink: "")]
        
        func initStateDictionary(withKeys: [String], andValues: [State]) -> Dictionary<String,State> {
            // initializes dictionary of states
            var stateDictionary = Dictionary<String,State>()
            stateDictionary.reserveCapacity(51)
            var index = 0
            while index < 50 {
                stateDictionary.updateValue(statesArray[index], forKey: stateNamesArray[index])
                index += 1
            }
            return stateDictionary
        }
        
        let stateDictionary = initStateDictionary(withKeys: stateNamesArray, andValues: statesArray)
        var thisState = stateDictionary[stateName]!
        
        func getLink(to search: String, in state: String) -> String {
            // creates link to website
            let space = "%20"
            let search = search.replacingOccurrences(of: " ", with: space) + space
            let govOnly = "site%3A.gov" + space
            let feelingLucky = "&btnI"
            let link = "http://www.google.com/search?q=" + govOnly + search + state.lowercased() + feelingLucky
            return link
        }
        
        if thisState.registerToVoteLink == "" {
            thisState.registerToVoteLink = getLink(to: "register to vote in", in: stateName)
        }
        if thisState.checkRegistrationLink == "" {
            thisState.checkRegistrationLink = getLink(to: "am i registered to vote in", in: stateName)
        }
        if thisState.requestMailInBallotLink == "" {
            thisState.requestMailInBallotLink = getLink(to: "request ballot", in: stateName)
        }
        if thisState.checkBallotLink == "" {
            thisState.checkBallotLink = getLink(to: "where is my ballot", in: stateName)
        }
        if thisState.findPollingPlaceLink == "" {
            thisState.findPollingPlaceLink = getLink(to: "find my polling place", in: stateName)
        }
        counter = 0
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
        
        return thisState
    }
}
