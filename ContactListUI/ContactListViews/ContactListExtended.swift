//
//  ContactListExtended.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 23.08.2022.
//

import SwiftUI

struct ContactListExtended: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section {
                    ContactField(imageName: "phone", fieldText: contact.phone)
                    ContactField(imageName: "envelope", fieldText: contact.email)
                } header: {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListExtended_Previews: PreviewProvider {
    static var previews: some View {
        ContactListExtended(contacts: [])
    }
}
