//
//  Entity+CoreDataProperties.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/16/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var shouldLoad: Bool

}
