//
//  Date+Extension.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/8/20.
//

import Foundation

extension Date {
    func toString(givenFormat format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateAsString = dateFormatter.string(from: self)
        return dateAsString
    }
}
