//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Hello world 1")
                .tabItem {
                    Label("One", systemImage: "star")
                }
            Text("Hello world 2")
                .tabItem {
                    Label("Two", systemImage: "circle")
                }
        }
    }
}


#Preview {
    ContentView()
}
