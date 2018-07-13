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
    var canRegisterOnline = Bool()
    var registerToVoteLink = String()
    var checkRegistrationLink = String()
    var canVoteEarly = Bool()
    var requestMailInBallotLink = String()
    var checkBallotLink = String()
    var findPollingPlaceLink = String()
    var name = String()
    init(of stateName: String) {
        // completes state initialization
        
        if (stateName == "") {
            name = String()
            canRegisterOnline = Bool()
            registerToVoteLink = String()
            checkRegistrationLink = String()
            canVoteEarly = Bool()
            requestMailInBallotLink = String()
            checkBallotLink = String()
            findPollingPlaceLink = String()
            return
        }
        
        // array of state names
        var stateNamesArray = ["alabama",
                               "alaska",
                               "arizona",
                               "arkansas",
                               "california",
                               "colorado",
                               "connecticut",
                               "delaware",
                               "districtofcolumbia",
                               "florida",
                               "georgia",
                               "hawaii",
                               "idaho",
                               "illinois",
                               "indiana",
                               "iowa",
                               "kansas",
                               "kentucky",
                               "louisiana",
                               "maine",
                               "maryland",
                               "massachusetts",
                               "michigan",
                               "minnesota",
                               "mississippi",
                               "missouri",
                               "montana",
                               "nebraska",
                               "nevada",
                               "newhampshire",
                               "newjersey",
                               "newmexico",
                               "newyork",
                               "northcarolina",
                               "northdakota",
                               "ohio",
                               "oklahoma",
                               "oregon",
                               "pennsylvania",
                               "rhodeisland",
                               "southcarolina",
                               "southdakota",
                               "tennessee",
                               "texas",
                               "utah",
                               "vermont",
                               "virginia",
                               "washington",
                               "westvirginia",
                               "wisconsin",
                               "wyoming"]
        
        func makeState(name: String, canRegisterOnline: Bool, registerToVoteLink: String, checkRegistrationLink: String, canVoteEarly: Bool, requestMailInBallotLink: String, checkBallotLink: String, findPollingPlaceLink: String) -> State! {
            // initializes a State's Bool values and hardcoded links
            let newState = State(of: "")
            newState.canRegisterOnline = canRegisterOnline
            newState.registerToVoteLink = registerToVoteLink
            newState.checkRegistrationLink = checkRegistrationLink
            newState.canVoteEarly = canVoteEarly
            newState.requestMailInBallotLink = requestMailInBallotLink
            newState.checkBallotLink = checkBallotLink
            newState.findPollingPlaceLink = findPollingPlaceLink
            newState.name = name
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
            stateDictionary.reserveCapacity(statesArray.count)
            var index = 0
            while index < statesArray.count {
                stateDictionary.updateValue(statesArray[index]!, forKey: stateNamesArray[index])
                index += 1
            }
            return stateDictionary
        }
        
        let stateDictionary = initStateDictionary(withKeys: stateNamesArray, andValues: statesArray as! [State])
        
        func removeSpecialCharacters(from entry: String) -> String {
            let goodCharacters = Set("abcdefghijklmnopqrstuvwxyz")
            return entry.lowercased().filter {goodCharacters.contains($0) }
        }
        
        func levenshteinDistance(from aString: String, to bString: String) -> Int {
            // calculates how similar two words are
            // https://stackoverflow.com/questions/44102213/levenshtein-distance-in-swift3
            
            if aString == bString {
                return 0
            }
            
            let (t, s) = (aString, bString)
            
            let empty = Array<Int>(repeating:0, count: s.count)
            var last = [Int](0...s.count)
            
            for (i, tLett) in t.enumerated() {
                var cur = [i + 1] + empty
                for (j, sLett) in s.enumerated() {
                    cur[j + 1] = tLett == sLett ? last[j] : min(last[j], last[j + 1], cur[j])+1
                }
                last = cur
            }
            return last.last!
        }
        
        func closestString(to myString: String, inArray stringArray: [String]) -> String {
            let myString = removeSpecialCharacters(from: myString)
            var levenshteinDistanceArray = [Int]()
            var wordDistance = Int()
            for name in stringArray {
                wordDistance = levenshteinDistance(from: myString, to: name)
                if wordDistance == 0 {
                    return name
                }
                levenshteinDistanceArray.append(wordDistance)
            }
            let shortestDistance = levenshteinDistanceArray.min()
            let indexOfClosestWord = levenshteinDistanceArray.index(of: shortestDistance!)
            return stringArray[indexOfClosestWord!]
        }
        
        var stateKey = closestString(to: stateName, inArray: stateNamesArray)
        var thisState = stateDictionary[stateKey]!
        
        func getLink(to search: String, in state: String) -> String {
            // creates link to website
            let space = "%20"
            let search = search.replacingOccurrences(of: " ", with: space) + space
            let govOnly = "site%3A.gov" + space
            let feelingLucky = "&btnI"
            let link = "http://www.google.com/search?q=" + govOnly + search + state.lowercased() + feelingLucky
            return link
        }
        
        // initialize State values
        name = thisState.name
        canRegisterOnline = thisState.canRegisterOnline
        registerToVoteLink = thisState.registerToVoteLink
        if thisState.registerToVoteLink == "" {
            registerToVoteLink = getLink(to: "register to vote in", in: stateName)
        }
        checkRegistrationLink = thisState.checkRegistrationLink
        if thisState.checkRegistrationLink == "" {
            checkRegistrationLink = getLink(to: "am i registered to vote in", in: stateName)
        }
        canVoteEarly = thisState.canVoteEarly
        requestMailInBallotLink = thisState.requestMailInBallotLink
        if thisState.requestMailInBallotLink == "" {
            requestMailInBallotLink = getLink(to: "request ballot", in: stateName)
        }
        checkBallotLink = thisState.checkBallotLink
        if thisState.checkBallotLink == "" {
            checkBallotLink = getLink(to: "where is my ballot", in: stateName)
        }
        findPollingPlaceLink = thisState.findPollingPlaceLink
        if thisState.findPollingPlaceLink == "" {
            findPollingPlaceLink = getLink(to: "find my polling place", in: stateName)
        }
        return
    }
}
