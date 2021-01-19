//
//  PushUpModel.swift
//  PMWatchSwiftUI WatchKit Extension
//
//  Created by Eric Davenport on 1/19/21.
//

import Foundation

struct PushUpModel: Identifiable, Codable {
  var totalCompleted: Int
  var goal: Int
  var date: Date
  var id = UUID()
  
  init(id: UUID = UUID(), date: Date = Date(), goal: Int, totalCompleted: Int = 0) {
    self.id = id
    self.date = date
    self.goal = goal
    self.totalCompleted = totalCompleted
  }
  
  static func testData() -> [PushUpModel] {
    return [
      PushUpModel(goal: 10),
      PushUpModel(goal: 10),
      PushUpModel(goal: 10),
      PushUpModel(goal: 10),
      PushUpModel(goal: 10),
      PushUpModel(goal: 10)
    ]
  }
}
