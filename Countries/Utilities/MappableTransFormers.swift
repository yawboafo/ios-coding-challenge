//
//  MappableTransFormers.swift
//  Countries
//
//  Created by Yaw Koranteng Boafo on 01/04/2022.
//  Copyright © 2022 James Weatherley. All rights reserved.
//

import Foundation
import ObjectMapper

class MappableTransFormers{
    
   //Quickly Transform JSONObject Array  to String
   static let ArrayToString = TransformOf<String, [String]>(fromJSON: { (value: [String]?) -> String? in
        return String(value?.first ?? "")
    }, toJSON: { (value: String?) -> [String]? in
           if let value = value {
                return [String(value)]
            }
            return nil
        })
    
    static let inToCommaSeperatedString = TransformOf<String, Int>(fromJSON: { (value: Int?) -> String? in
        return String(value?.formattedWithSeparator ?? "")
    }, toJSON: { (value: String?) -> Int? in
           if let value = value {
               return Int(value.replacingOccurrences(of: ",", with: ""))
            }
            return 0
        })
}
