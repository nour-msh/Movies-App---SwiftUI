//
//  Movie.swift
//  Movies App - SwiftUI
//
//  Created by Nour on 04/11/2024.
//

import Foundation

struct Movie: Decodable, Identifiable {
    var imageURL: String
    var name: String
    var price: Double
    var genre: String
    var rating: Double
    var description: String
    var releaseYear: Int
    var id: Int
}

struct MovieResponse: Decodable {
    var request: [Movie]
}

struct MockData {
    static let example1 = Movie(imageURL: "https://example.com/images/movies/inception.jpg", name: "Inception", price: 12.99, genre: "Sci-Fi", rating: 8.8, description: "A mind-bending thriller where dreams can be manipulated.", releaseYear: 2010, id: 1)
    
    static let example2 = Movie(imageURL: "https://example.com/images/movies/matrix.jpg", name: "The Matrix", price: 9.99, genre: "Sci-Fi", rating: 8.7, description: "A hacker discovers the truth about his reality.", releaseYear: 1999, id: 2)
    
    static let example3 = Movie(imageURL: "https://example.com/images/movies/interstellar.jpg", name: "Interstellar", price: 14.99, genre: "Adventure", rating: 8.6, description: "A journey through space and time to save humanity.", releaseYear: 2014, id: 3)
    
    static let movies = [example1, example2, example3]
}
