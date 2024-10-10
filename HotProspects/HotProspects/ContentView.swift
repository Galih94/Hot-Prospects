//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String?
    var users: [String] = ["Tohru", "Yuki", "Kyo", "Momiji"]
    var body: some View {
        VStack {
            if let selection {
                Text("you selected \(selection)")
            }
            List(users, id: \.self, selection: $selection) { user in
                Text(user)
            }
        }
    }
}

#Preview {
    ContentView()
}
