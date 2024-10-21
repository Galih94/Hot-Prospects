//
//  EditProspectView.swift
//  HotProspects
//
//  Created by Galih Samudra on 21/10/24.
//

import SwiftData
import SwiftUI

struct EditProspectView: View {
    @Environment(\.dismiss) var dismiss
    @Query(sort: \Prospect.name) var prospects: [Prospect]
    let prospect: Prospect
    @State private var name: String
    @State private var emailAddress: String
    
    init(prospect: Prospect) {
        self.prospect = prospect
        self.name = prospect.name
        self.emailAddress = prospect.emailAddress
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextField("Name", text: $name)
                        .textContentType(.name)
                    
                    TextField("Email Address", text: $emailAddress)
                        .textContentType(.emailAddress)
                    
                    Button("Save") {
                        if let index = prospects.firstIndex(of: prospect) {
                            prospects[index].name = name
                            prospects[index].emailAddress = emailAddress
                        }
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    EditProspectView(prospect: Prospect(name: "test", emailAddress: "test@mail.com", isContacted: false))
}
