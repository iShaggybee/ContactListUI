//
//  ContactList.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 23.08.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                ContactCell(contact: contact)
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: [])
    }
}
