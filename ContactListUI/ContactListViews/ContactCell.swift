//
//  ContactCell.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 24.08.2022.
//

import SwiftUI

struct ContactCell: View {
    let contact: Person
    
    var body: some View {
        NavigationLink(destination: ContactView(contact: contact)) {
            Text(contact.fullName)
        }
    }
}

struct ContactCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactCell(contact: Person.getDefaultPerson())
    }
}
