//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Karl Pfister on 1/19/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    
    //MARK: - Properties
    var book: Book? = nil
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        designClearButton()
        updateViews(book: book)
    }
    
    //MARK: - Helper Functions
    func updateViews(book: Book?) {
        guard let book = book else {return}
        bookTitleTextField.text = book.title
        bookAuthorTextField.text = book.author
        bookRatingTextField.text = String(book.rating)
        bookSynopsisTextView.text = book.synopsis
    }
    
    func resetView() {
        bookTitleTextField.text = ""
        bookRatingTextField.text = ""
        bookAuthorTextField.text = ""
        bookSynopsisTextView.text = ""
    }
    
    func designClearButton() {
        clearButton.layer.borderWidth = 1
        clearButton.layer.cornerRadius = clearButton.frame.height / 2
        clearButton.layer.borderColor = UIColor.systemOrange.cgColor
        clearButton.setTitle("Clear Text", for: .normal)
    }
    //MARK: - Actions

    @IBAction func saveButtonTapped(_ sender: Any) {
        
        guard let title = bookTitleTextField.text,
              let author = bookAuthorTextField.text,
              let rating = bookRatingTextField.text,
              let synopsis = bookSynopsisTextView.text else {return}
        let unwrappedRating = Double(rating) ?? 0.0
        if let book = book {
            //Update
            BookController.sharedInstance.updateBook(book: book, author: author, title: title, rating: unwrappedRating, synopsis: synopsis)
        } else {
            // Create
            BookController.sharedInstance.createBook(author: author, title: title, rating:unwrappedRating, synopsis: synopsis)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    
} // End of class
