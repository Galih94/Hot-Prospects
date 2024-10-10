//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    var body: some View {
        TabView(selection: $selectedTab) {
            Button("Show tab 2") {
                selectedTab = "Two"
            }
            .tabItem {
                Label("One", systemImage: "star")
            }
            .tag("One")
            Button("Show tab 1") {
                selectedTab = "One"
            }
            .tabItem {
                Label("Two", systemImage: "circle")
            }
            .tag("Two")
        }
    }
}


#Preview {
    ContentView()
}
