/*:
 [Table of Contents](Table%20of%20Contents)
 ****
 */
//: # CloudKit Manager
//import UIKit
import Foundation
import CloudKit


var bookMgt = BooksManager()
bookMgt.addBook(Book(
  title: "Justice",
  author: "Michael Sandel",
  rating: 1.0,
  isbn: "XXXXXXXXX",
  notes: "What's the right thing to do"))
var count = bookMgt.bookCount
print(count)


