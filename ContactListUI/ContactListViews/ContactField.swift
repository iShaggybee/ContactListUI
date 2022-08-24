//
//  ContactField.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 24.08.2022.
//

import SwiftUI

struct ContactField: View {
    let imageName: String
    let fieldText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.blue)
                Text(fieldText)
                    .font(.title3)
            }
            .frame(height: 40)
        }
    }
}

struct ContactField_Previews: PreviewProvider {
    static var previews: some View {
        ContactField(imageName: "person.fill", fieldText: "cat@cat.cat")
    }
}
