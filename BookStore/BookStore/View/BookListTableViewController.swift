//
//  BookListTableViewController.swift
//  BookStore
//
//  Created by Karl Pfister on 1/19/22.
//

import UIKit

class BookListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.sharedInstance.books.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "authorCell", for: indexPath) as? BookTableViewCell else {return UITableViewCell()}
        let book = BookController.sharedInstance.books[indexPath.row]
        cell.updateViews(with: book)
        return cell
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let book = BookController.sharedInstance.books[indexPath.row]
            BookController.sharedInstance.delete(book: book)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let destination = segue.destination as? BookDetailViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                let bookToPass = BookController.sharedInstance.books[indexPath.row]
                destination.book = bookToPass
            }
        }
    }
}
