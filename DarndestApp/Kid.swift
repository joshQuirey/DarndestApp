//
//  Kid.swift
//  
//
//  Created by Joshua Quirey on 8/19/15.
//
//

import Foundation
import CoreData

class Kid: NSManagedObject {

    @NSManaged var birthday: NSDate?
    @NSManaged var name: String?
    @NSManaged var picture: NSData

}
