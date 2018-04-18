//
//  Books.swift
//  JavacreamCalculator
//
//  Created by Admin on 18.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation


class Book{
    let isbn: String
    let title: String
    var pages: Int
    var price: Double
    
    init(isbn: String, title: String){
        self.isbn = isbn
        self.title = title
        self.pages = 0
        self.price = 0
    }
    
    func info() -> String{
        let info = "Book: isbn=\(isbn), title=\(title), pages=\(pages), price=\(price)"
        return info
    }
    
}

class BookManager{
    var counter: Int = 0
    func create(title: String) -> Book{
        let createdBook = Book(isbn: "ISBN: " + String(counter), title: title) //Erzeugung einer Instanz der Klasse Book
        counter = counter + 1
        return createdBook
    }
}


func bookDemo(){
    let bookManager = BookManager()
    let book1 = bookManager.create(title: "Ein Buch")
    print(book1.info())
    let book2 = bookManager.create(title: "Ein zweites Buch")
    print(book2.info())

}
