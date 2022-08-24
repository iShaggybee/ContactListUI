//
//  ContactView.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 24.08.2022.
//

import SwiftUI

struct ContactView: View {
    let contact: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            
            List {
                ContactField(imageName: "phone", fieldText: contact.phone)
                ContactField(imageName: "envelope", fieldText: contact.email)
            }
            .listStyle(.plain)
            .padding(.top, 20)
        }
        .navigationTitle(contact.fullName)
        .padding(.top, 20)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: Person.getDefaultPerson())
    }
}
