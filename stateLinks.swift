//
//  stateLinks.swift
//  
//
//  Created by AK Alilonu on 7/7/18.
//

import Foundation

//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class State {
    var name = String()
    var canRegisterOnline = Bool()
    var registerLink = String()
    var checkRegistrationLink = String()
    var canVoteEarly = Bool()
    var checkBallotLink = String()
    var checkPollingPlaceLink = String()
}

func makeState(name: String, canRegisterOnline: Bool, registerLink: String, checkRegistrationLink: String, canVoteEarly: Bool, checkBallotLink: String, checkPollingPlaceLink: String) -> State {
    let s = State()
    s.name = name
    s.canRegisterOnline = canRegisterOnline
    s.registerLink = registerLink
    s.checkRegistrationLink = checkRegistrationLink
    s.canVoteEarly = canVoteEarly
    s.checkBallotLink = checkBallotLink
    s.checkPollingPlaceLink = checkPollingPlaceLink
    return s
}

let al = makeState(name: "Alabama", canRegisterOnline: true, registerLink: "https://www.alabamavotes.gov/olvr/default.aspx", checkRegistrationLink: "https://myinfo.alabamavotes.gov/VoterView/Home.do", canVoteEarly: false, checkBallotLink: "https://myinfo.alabamavotes.gov/VoterView/Home.do", checkPollingPlaceLink: "https://myinfo.alabamavotes.gov/VoterView/PollingPlaceSearch.do")

let stateNamesArray = ["Alaska",
                       "Alabama",
                       "Arkansas",
                       "Arizona",
                       "California",
                       "Colorado",
                       "Connecticut",
                       "District of Columbia",
                       "Delaware",
                       "Florida",
                       "Georgia",
                       "Hawaii",
                       "Iowa",
                       "Idaho",
                       "Illinois",
                       "Indiana",
                       "Kansas",
                       "Kentucky",
                       "Louisiana",
                       "Massachusetts",
                       "Maryland",
                       "Maine",
                       "Michigan",
                       "Minnesota",
                       "Missouri",
                       "Mississippi",
                       "Montana",
                       "North Carolina",
                       "North Dakota",
                       "Nebraska",
                       "New Hampshire",
                       "New Jersey",
                       "New Mexico",
                       "Nevada",
                       "New York",
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
                       "Virginia",
                       "Vermont",
                       "Washington",
                       "Wisconsin",
                       "West Virginia",
                       "Wyoming"]

var stateDictionary = Dictionary<String,State>()
stateDictionary.reserveCapacity(51)
stateDictionary = ["Alabama": al]

func getState(of stateName: String) -> State {
    return stateDictionary[stateName]!
}

getState(of: "Alabama")

