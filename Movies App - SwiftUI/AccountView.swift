//
//  AccountView.swift
//  Movies App - SwiftUI
//
//  Created by Nour on 04/11/2024.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) { Text("Movies") }
        }).navigationTitle("Account")
    }
}

#Preview {
    AccountView()
}
