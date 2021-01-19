//
//  MonthListView.swift
//  PMWatchSwiftUI WatchKit Extension
//
//  Created by Eric Davenport on 1/19/21.
//

import SwiftUI

struct MonthListView: View {
  @State var pushUpTestData: [PushUpModel] = PushUpModel.testData()
  
  var body: some View {
    List {
      Section(header: Text("This Month")) {
      ForEach(pushUpTestData) { pushUp in
        VStack {
          Text("Completed: \(pushUp.totalCompleted)")
          Text("Goal: \(pushUp.goal)")
        }
      }
    }
      
    }
    .listStyle(CarouselListStyle())
    .background(Color.random)
    .padding()
  }
}

struct MonthListView_Previews: PreviewProvider {
  static var previews: some View {
    MonthListView()
  }
}
