//
//  MoviesListView.swift
//  Movies App - SwiftUI
//
//  Created by Nour on 04/11/2024.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {
        NavigationView {
            List(MockData.movies) { movie in
                HStack(alignment: .top, spacing: 10) {
                 
                    AsyncImage(url: URL(string: movie.imageURL)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 120)
                            .cornerRadius(8)
                    } placeholder: {
                        
                        ProgressView()
                            .frame(width: 80, height: 120)
                    }

                    VStack(alignment: .leading, spacing: 5) {
                        Text(movie.name)
                            .font(.headline)
                        
                        Text("Genre: \(movie.genre)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("Rating: \(String(format: "%.1f", movie.rating))")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("Price: $\(String(format: "%.2f", movie.price))")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("Release Year: \(movie.releaseYear)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text(movie.description)
                            .font(.body)
                            .lineLimit(3)  
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("Movies")
        }
    }
}

#Preview {
    MoviesListView()
}
