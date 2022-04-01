//
//  Country+CoreDataProperties.swift
//  
//
//  Created by Yaw Koranteng Boafo on 01/04/2022.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var capital: String?
    @NSManaged public var name: String?
    @NSManaged public var population: Int32
    @NSManaged public var area: Double
    @NSManaged public var region: String?

}
