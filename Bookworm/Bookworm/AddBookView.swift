//
//  AddBookView.swift
//  Bookworm
//
//  Created by Ваня Науменко on 13.03.24.
//

import SwiftUI
import SwiftData

struct AddBookView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]

    
    var body: some View {
        NavigationStack {
            Form {
                Section{
                    TextField("Name of book", text: $title)
                    TextField("Author`s name", text: $author)
                    
                    Picker("Gener", selection: $genre) {
                        ForEach(genres, id: \.self ) {
                            Text($0)
                        }
                    }
                }
                Section("Write a review"){
                    TextEditor(text: $review)
                    
                    Picker("Rating", selection: $rating) {
                        ForEach(0..<6) {
                            Text(String($0))
                        }
                    }
                }
                Section {
                    Button("Seve"){
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBookView().modelContainer(for: Book.self)
}
