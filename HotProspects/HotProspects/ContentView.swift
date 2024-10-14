//
//  ContentView.swift
//  HotProspects
//
//  Created by Galih Samudra on 10/10/24.
//
import SamplePackage
import SwiftUI

struct ContentView: View {
    private let possibleNumbers = 1...60
    private var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map {"\($0)"}
        
        return strings.formatted()
    }
    var body: some View {
        Text(results)
    }
}

#Preview {
    ContentView()
}
