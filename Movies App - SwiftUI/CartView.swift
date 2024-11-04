//
//  CartView.swift
//  Movies App - SwiftUI
//
//  Created by Nour on 04/11/2024.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) { Text("Movies") }
        }).navigationTitle("Cart")
    }
}

#Preview {
    CartView()
}
