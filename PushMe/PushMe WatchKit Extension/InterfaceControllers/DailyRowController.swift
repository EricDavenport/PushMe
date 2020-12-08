//
//  DailyRowController.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/8/20.
//

import UIKit
import Foundation
import WatchKit


class DailyRowController: NSObject {
  
  @IBOutlet weak var dateLabel: WKInterfaceLabel!
  @IBOutlet weak var dailyCountLabel: WKInterfaceLabel!
  @IBOutlet weak var percentageLabel: WKInterfaceLabel!
  
  var dailyTotal: PushUpModel? {
    didSet {
      guard let daily = dailyTotal else { return }
      
//      let _ = daily.totalCompleted / daily.goal
//      let number = String(format: "%.2f", (daily.totalCompleted / daily.goal))
//      print("\(number)%")
      
      dateLabel.setText("\(daily.date.toString(givenFormat: "MM/dd"))")
      dailyCountLabel.setText("\(daily.totalCompleted) / \(daily.goal)")
//      percentageLabel.setHidden(true)
    }
  }
  
}
