//
//  PushUpModel.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/7/20.
//

import Foundation

struct PushUpModel: Hashable {
  let totalCompleted: Int
  let goal: Int
  let date: Date
  let identifier = UUID()
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
  }
  
  static func testData() -> [PushUpModel] {
    return [
      PushUpModel(totalCompleted: 10, goal: 50, date: Date()),
      PushUpModel(totalCompleted: 20, goal: 50, date: Date()),
      PushUpModel(totalCompleted: 30, goal: 50, date: Date()),
      PushUpModel(totalCompleted: 40, goal: 50, date: Date()),
      PushUpModel(totalCompleted: 50, goal: 50, date: Date()),
      PushUpModel(totalCompleted: 45, goal: 50, date: Date())
    ]
  }
}
