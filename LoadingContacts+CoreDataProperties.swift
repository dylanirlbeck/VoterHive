//
//  LoadingContacts+CoreDataProperties.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/16/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//
//

import Foundation
import CoreData


extension LoadingContacts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoadingContacts> {
        return NSFetchRequest<LoadingContacts>(entityName: "LoadingContacts")
    }

    @NSManaged public var shouldLoad: Bool
    @NSManaged public var contactCount: Int16
}
