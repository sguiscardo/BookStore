//
//  BookTableViewCell.swift
//  BookStore
//
//  Created by Karl Pfister on 1/19/22.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
    
    
    func updateViews(with book: Book) {
        
        bookTitleLabel.text = book.title
        bookAuthorLabel.text = book.author
        bookRatingLabel.text = String(book.rating)
    }

}
