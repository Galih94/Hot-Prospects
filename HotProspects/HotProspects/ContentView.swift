//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions {
                    Button("Send message", systemImage: "message") {
                        print("cta tapped")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
