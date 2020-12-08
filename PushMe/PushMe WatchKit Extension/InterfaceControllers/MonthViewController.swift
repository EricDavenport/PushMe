//
//  MonthViewController.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/8/20.
//

import Foundation
import WatchKit

class MonthViewController: WKInterfaceController {
  
  @IBOutlet weak var dailyInterfaceTable: WKInterfaceTable!
  
  var testData = PushUpModel.testData()
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
//    tableSetup(withContext: context)
    if let pushUp: PushUpModel = context as? PushUpModel {
      testData.append(pushUp)
    }
    
    dailyInterfaceTable.setNumberOfRows(testData.count, withRowType: "dailyRow")
    
    for index in 0..<dailyInterfaceTable.numberOfRows {
      guard let controller = dailyInterfaceTable.rowController(at: index) as? DailyRowController else {
        continue
      }
      controller.dailyTotal = testData[index]
    }
  }
  
  override func willActivate() {
    super.willActivate()
  }
  
  override func didDeactivate() {
    super.didDeactivate()
  }
  
  private func tableSetup(withContext context: Any?) {
    if let pushUp: PushUpModel = context as? PushUpModel {
      testData.append(pushUp)
    }
    
    dailyInterfaceTable.setNumberOfRows(testData.count, withRowType: "dailtRow")
    
    for index in 0..<dailyInterfaceTable.numberOfRows {
      guard let controller = dailyInterfaceTable.rowController(at: index) as? DailyRowController else {
        continue
      }
      controller.dailyTotal = testData[index]
    }
  }

}
