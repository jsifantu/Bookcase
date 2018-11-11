//
//  BookcaseTests.swift
//  BookcaseTests
//
//  Created by Craig Grummitt on 10/05/2016.
//  Copyright © 2016 Craig Grummitt. All rights reserved.
//

import XCTest
@testable import Bookcase

class BookcaseTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    let booksManager = BooksManager()
    let book = Book(
      title: "Justice",
      author: "Michael Sandel",
      rating: 1.0,
      isbn: "XXXXXXXXX",
      notes: "What's the right thing to do")
    booksManager.addBook(book)
    let count = booksManager.bookCount
    NSLog("Book count: %d", count)
    booksManager.addBookCloudKit(book: book, completion: { (error) in
      self.cloudOperation(waiting:false)
      self.cloudErrors(error: error)
    })
    
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  func cloudOperation(waiting: Bool) {
    if waiting {
      NSLog("Waiting for CloudKit operation to complete")
    } else {
      NSLog("CloudKit operation terminated")
    }
  }
  
  func cloudErrors(error: Error?, buttonTitle:String = "OK", completion:(()->Void)? = nil) {
    if let error = error {
      NSLog("Error: %@", error.localizedDescription)
    }
  }
}
