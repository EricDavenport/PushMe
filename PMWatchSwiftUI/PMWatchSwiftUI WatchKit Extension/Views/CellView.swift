//
//  CellView.swift
//  PMWatchSwiftUI WatchKit Extension
//
//  Created by Eric Davenport on 1/19/21.
//

import SwiftUI

struct CellView: View {
  let pushUp: PushUpModel
    var body: some View {
      Text("Good Morning")
    }
}

struct CellView_Previews: PreviewProvider {
  static let pushUp = PushUpModel.testData()[0]
    static var previews: some View {
        CellView(pushUp: pushUp)
    }
}
