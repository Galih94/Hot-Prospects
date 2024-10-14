//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//
import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Request permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { isSuccess, error in
                    if isSuccess {
                        print("success requestAuthorization")
                    } else if let error {
                        print("error -- \(error.localizedDescription)")
                    }
                }
            }
            
            Button("Schedule notification") {
                /// notification content
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "it looks hungry"
                content.sound = UNNotificationSound.default
                
                /// show 5 second from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                
                /// create local notif with random UUID
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                /// add notif to request
                UNUserNotificationCenter.current().add(request)
                
                ///NOTE:  cmd+L on simulator to lock screen
            }
        }
    }
}

#Preview {
    ContentView()
}
