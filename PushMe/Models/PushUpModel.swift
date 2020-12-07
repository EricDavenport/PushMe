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
  
  static func testData() -> [PushUpModel]
}
