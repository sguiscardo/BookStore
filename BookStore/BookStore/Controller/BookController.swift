//
//  BookController.swift
//  BookStore
//
//  Created by Karl Pfister on 1/19/22.
//

import Foundation

class BookController {
    //MARK: - Properties
    var books: [Book] = []
    static let sharedInstance = BookController()
    
    //MARK: - CRUD
    func createBook(author: String, title: String, rating: Double, synopsis: String) {
        let book = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(book)
    }
    
    func updateBook(book: Book, author: String, title: String, rating: Double, synopsis: String) {
        book.title = title
        book.author = author
        book.rating = rating
        book.synopsis = synopsis
    }
    
    func delete(book: Book) {
        guard let index = books.firstIndex(of: book) else {return}
        books.remove(at: index)
    }
}
