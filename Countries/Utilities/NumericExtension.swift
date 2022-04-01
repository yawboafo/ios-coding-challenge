//
//  NumericExtension.swift
//  Countries
//
//  Created by Yaw Koranteng Boafo on 01/04/2022.
//  Copyright © 2022 James Weatherley. All rights reserved.
//

import Foundation

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension Int32{
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}
