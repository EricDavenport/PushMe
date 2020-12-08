//
//  PushUpModel.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/7/20.
//

import Foundation

struct PushUpModel: Hashable {
  let count: Int
  let date: Date
  let identifier = UUID()
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
  }
  
  static func testData() -> [PushUpModel] {
    return [
      PushUpModel(count: 10, date: Date()),
      PushUpModel(count: 20, date: Date()),
      PushUpModel(count: 30, date: Date()),
      PushUpModel(count: 40, date: Date()),
      PushUpModel(count: 50, date: Date()),
      PushUpModel(count: 45, date: Date())
    ]
  }
}
