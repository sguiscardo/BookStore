//
//  Book.swift
//  BookStore
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import Foundation


class Book {
    var author: String
    var title: String
    var rating: Double
    var lastUpdate: Date
    var synopsis: String
    
    init(author: String, title: String, rating: Double, lastUpdate: Date, synopsis: String) {
        self.author = author
        self.title = title
        self.rating = rating
        self.lastUpdate = lastUpdate
        self.synopsis = synopsis
    }
}// end of class



