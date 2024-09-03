# # db/seeds.rb

# Genre.destroy_all
# User.destroy_all
# Book.destroy_all
# Review.destroy_all
# UserBook.destroy_all
# UserGenre.destroy_all

# # Genres
# puts "Seeding genres...🌱"
# genres = Genre.create([
#                         { name: "Science Fiction" },
#                         { name: "Fantasy" },
#                         { name: "Mystery" },
#                         { name: "Non-Fiction" },
#                         { name: "Romance" },
#                         { name: "Classic Literature" },
#                         { name: "Dystopian" },
#                         { name: "Adventure" },
#                         { name: "Historical Fiction" },
#                         { name: "Philosophy" },
#                       ])

# # Users
# puts "Seeding users...🌱"
# users = User.create([
#                       { email: "john.doe@example.com", password: "password1", first_name: "John", last_name: "Doe" },
#                       { email: "jane.smith@example.com", password: "password2", first_name: "Jane",
#                         last_name: "Smith" },
#                       { email: "alice.jones@example.com", password: "password3", first_name: "Alice",
#                         last_name: "Jones" },
#                       { email: "bob.brown@example.com", password: "password4", first_name: "Bob", last_name: "Brown" },
#                       { email: "charlie.davis@example.com", password: "password5", first_name: "Charlie",
#                         last_name: "Davis" },
#                     ])

# # Books
# puts "Seeding books...🌱"
# books = Book.create([
#                       { title: "Dune", author: "Frank Herbert", genre: genres[0] },
#                       { title: "The Hobbit", author: "J.R.R. Tolkien", genre: genres[1] },
#                       { title: "The Da Vinci Code", author: "Dan Brown", genre: genres[2] },
#                       { title: "Sapiens", author: "Yuval Noah Harari", genre: genres[3] },
#                       { title: "Pride and Prejudice", author: "Jane Austen", genre: genres[4] },
#                       { title: "1984", author: "George Orwell", genre: genres[6] },
#                       { title: "To Kill a Mockingbird", author: "Harper Lee", genre: genres[5] },
#                       { title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: genres[5] },
#                       { title: "Moby Dick", author: "Herman Melville", genre: genres[5] },
#                       { title: "War and Peace", author: "Leo Tolstoy", genre: genres[8] },
#                       { title: "The Catcher in the Rye", author: "J.D. Salinger", genre: genres[5] },
#                       { title: "The Lord of the Rings", author: "J.R.R. Tolkien", genre: genres[1] },
#                       { title: "The Alchemist", author: "Paulo Coelho", genre: genres[5] },
#                       { title: "Brave New World", author: "Aldous Huxley", genre: genres[6] },
#                       { title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: genres[9] },
#                       { title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", genre: genres[9] },
#                       { title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", genre: genres[0] },
#                       { title: "Anna Karenina", author: "Leo Tolstoy", genre: genres[8] },
#                       { title: "The Count of Monte Cristo", author: "Alexandre Dumas", genre: genres[8] },
#                       { title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marquez", genre: genres[8] },
#                       { title: "Wuthering Heights", author: "Emily Brontë", genre: genres[5] },
#                       { title: "Jane Eyre", author: "Charlotte Brontë", genre: genres[5] },
#                       { title: "Frankenstein", author: "Mary Shelley", genre: genres[5] },
#                       { title: "Dracula", author: "Bram Stoker", genre: genres[5] },
#                       { title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: genres[5] },
#                       { title: "Les Misérables", author: "Victor Hugo", genre: genres[8] },
#                     ])

# # Reviews
# puts "Seeding reviews...🌱"
# reviews = Review.create([
#                           { user: users[0], book: books[0], rating: 5,
#                             content: "An epic masterpiece of science fiction!" },
#                           { user: users[1], book: books[1], rating: 4,
#                             content: "A delightful adventure in Middle-Earth." },
#                           { user: users[2], book: books[2], rating: 3,
#                             content: "A thrilling mystery with unexpected twists." },
#                           { user: users[3], book: books[3], rating: 5,
#                             content: "A fascinating exploration of human history." },
#                           { user: users[4], book: books[4], rating: 4,
#                             content: "A timeless romance with sharp social commentary." },
#                         ])

# # UserBooks
# puts "Seeding user_books...🌱"
# user_books = UserBook.create([
#                                { user: users[0], book: books[0] },
#                                { user: users[0], book: books[1] },
#                                { user: users[1], book: books[2] },
#                                { user: users[2], book: books[3] },
#                                { user: users[3], book: books[4] },
#                              ])

# # UserGenres
# puts "Seeding user_genres...🌱"
# user_genres = UserGenre.create([
#                                  { user: users[0], genre: genres[0] },
#                                  { user: users[0], genre: genres[1] },
#                                  { user: users[1], genre: genres[2] },
#                                  { user: users[2], genre: genres[3] },
#                                  { user: users[3], genre: genres[4] },
#                                ])
# puts "Seeding complete! 🌳"

# db/seeds.rb

Genre.destroy_all
User.destroy_all
Book.destroy_all
Review.destroy_all
UserBook.destroy_all
UserGenre.destroy_all

# Genres
puts "Seeding genres...🌱"
genres = Genre.create([
                        { name: "Science Fiction" },
                        { name: "Fantasy" },
                        # other genres...
                      ])

# Users
puts "Seeding users...🌱"
users = User.create([
                      { email: "john.doe@example.com", password: "password1", first_name: "John", last_name: "Doe" },
                      # other users...
                    ])

# Books
puts "Seeding books...🌱"
books = Book.create([
                      { title: "Dune", author: "Frank Herbert", genre: genres[0] },
                      { title: "The Hobbit", author: "J.R.R. Tolkien", genre: genres[1] },
                      # other books...
                    ])

# Attach image to "Dune"
dune = Book.find_by(title: "Dune")
dune.image.attach(
  io: File.open(Rails.root.join("db", "images", "dune.jpg")),
  filename: "dune.jpg"
)

# Reviews
puts "Seeding reviews...🌱"
reviews = Review.create([
                          { user: users[0], book: books[0], rating: 5,
                            content: "An epic masterpiece of science fiction!" },
                          # other reviews...
                        ])

# UserBooks
puts "Seeding user_books...🌱"
user_books = UserBook.create([
                               { user: users[0], book: books[0] },
                               # other user_books...
                             ])

# UserGenres
puts "Seeding user_genres...🌱"
user_genres = UserGenre.create([
                                 { user: users[0], genre: genres[0] },
                                 # other user_genres...
                               ])

puts "Seeding complete! 🌳"
