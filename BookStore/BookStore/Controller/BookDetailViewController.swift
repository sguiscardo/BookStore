//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import UIKit

class BookDetailViewController: UIViewController {
    // MARK: - outlets
    
    @IBOutlet weak var bookTitleTextField: UITextField!
    
    @IBOutlet weak var bookAuthorTextField: UITextField!
    
    @IBOutlet weak var bookRatingTextView: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    
    @IBOutlet weak var clearButton: UIButton!
    
    // MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// MARK: - actions
    
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    

    @IBAction func clearButtonTapped(_ sender: Any) {
    }
}
