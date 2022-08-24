//
//  ContentView.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            
            ContactListExtended(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
