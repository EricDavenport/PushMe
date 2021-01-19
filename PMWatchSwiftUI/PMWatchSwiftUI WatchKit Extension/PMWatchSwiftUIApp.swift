//
//  PMWatchSwiftUIApp.swift
//  PMWatchSwiftUI WatchKit Extension
//
//  Created by Eric Davenport on 1/19/21.
//

import SwiftUI

@main
struct PMWatchSwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                QuickAddView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
