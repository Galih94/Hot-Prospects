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
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("cta delete")
                    }
                    Button("Cancel", systemImage: "chevron.left", role: .cancel){
                        print("cta back")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("cta pin")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    ContentView()
}
