//
//  Country.swift
//  Countries
//
//  Created by Syft on 04/03/2020.
//  Copyright © 2020 Syft. All rights reserved.
//

import Foundation
import CoreData
import ObjectMapper


@objc(Country)
class Country: NSManagedObject, Mappable {
    
    
    private override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }
    
    required init?(map: Map) {
        
        //The JSON response proves that capital can be nil,
        // So we dont need to make it a requirement
        // I removed the check for Capital
        guard map.JSON["name"] != nil,
              map.JSON["population"] != nil else {
                assertionFailure("Failed to create Country")
                return nil
        }
        
        
        
        super.init(entity: Self.entity(), insertInto: nil)
    }
    
    func mapping(map: Map) {
        
        DispatchQueue.main.async {
            self.name <- map["name.common"]
            self.capital <- (map["capital"],MappableTransFormers.ArrayToString) 
            self.population <- (map["population"],MappableTransFormers.inToCommaSeperatedString)
            self.region <- map["region"]
            self.area <- map["area"]
        }
    }
    
}


