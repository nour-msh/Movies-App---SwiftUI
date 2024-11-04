//
//  ContentView.swift
//  Movies App - SwiftUI
//
//  Created by Nour on 03/11/2024.
//

import SwiftUI

struct MoviesTabView: View {
    var body: some View {
        TabView{
            MoviesListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Movies")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
                
            
        }.accentColor(Color("PrimaryColor"))
    }
}

#Preview {
    MoviesTabView()
}
