//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//
import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text("Hello world")
                .padding()
                .background(backgroundColor)
            Text("Change Color")
                .padding()
                .contextMenu{
                    Button("Red", systemImage: backgroundColor == .red ? "checkmark.circle.fill" : "", role: .destructive) {
                        backgroundColor = Color.red
                    }
                    Button("Green", systemImage: backgroundColor == .green ? "checkmark.circle.fill" : "", role: .none) {
                        backgroundColor = Color.green
                    }
                    Button("Blue", systemImage: backgroundColor == .blue ? "checkmark.circle.fill" : "", role: .cancel) {
                        backgroundColor = Color.blue
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
