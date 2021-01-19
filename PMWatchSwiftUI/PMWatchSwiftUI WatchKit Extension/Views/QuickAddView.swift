//
//  ContentView.swift
//  PMWatchSwiftUI WatchKit Extension
//
//  Created by Eric Davenport on 1/19/21.
//

import SwiftUI

struct QuickAddView: View {
    var body: some View {
      VStack {
        ZStack {
          Circle()
            .stroke(Color.blue, lineWidth: 5)
          Text("10 / 100")
        }
        .padding(.top)
        HStack {
          Button("+1") {
            // add 1 push up to total
          }
          .padding(.bottom)
          Button("+2") {
            // add 2 pushups to total
          }
          .padding(.bottom)
        }
        HStack {
          Button("+5") {
            // add 5
          }
          .padding(.bottom)
          Button("+10") {
            // add 10
          }
          .padding(.bottom)
        }

    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuickAddView()
    }
}
