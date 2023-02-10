//
//  BookController.swift
//  BookStore
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import Foundation


class BookController {
    // MARK: - Create a singleton to localize
    
    static let sharedInstance = BookController()
    
    // MARK: - Source of truth
    var listOfBooks: [Book] = [] //this is the Array that I'm using to organize the data
    
    // MARK: - Crud
    //create a function that Initializes Book
    func createBook(author: String, title: String, rating: Double, lastUpdate: Date, synopsis: String) {
        
        let book = Book(author: author, title: title, rating: rating, lastUpdate: lastUpdate, synopsis: synopsis)
        
        listOfBooks.append(book)
        
    }
    
}//end of class

