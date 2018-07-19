//
//  Loginformation+CoreDataProperties.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/18/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//
//

import Foundation
import CoreData


extension Loginformation {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Loginformation> {
        return NSFetchRequest<Loginformation>(entityName: "Loginformation")
    }

    @NSManaged public var userEmail: String?
    @NSManaged public var userPass: String?

}
