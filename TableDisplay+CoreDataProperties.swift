//
//  TableDisplay+CoreDataProperties.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/17/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//
//

import Foundation
import CoreData


extension TableDisplay {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TableDisplay> {
        return NSFetchRequest<TableDisplay>(entityName: "TableDisplay")
    }

    @NSManaged public var someName: String?

}
