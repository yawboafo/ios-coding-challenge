//
//  Country+CoreDataProperties.swift
//  Countries
//
//  Created by Yaw Koranteng Boafo on 01/04/2022.
//  Copyright © 2022 James Weatherley. All rights reserved.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var area: Double
    @NSManaged public var capital: String?
    @NSManaged public var name: String?
    @NSManaged public var population: String?
    @NSManaged public var region: String?

}

extension Country : Identifiable,Comparable {
    static func ==(lhs: Country, rhs: Country) -> Bool {
        return (lhs.name ?? "") == (rhs.name ?? "")
      }

      static func <(lhs: Country, rhs: Country) -> Bool {
          return (lhs.name ?? "") < (rhs.name ?? "")
      }
}
