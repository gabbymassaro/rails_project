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
                        { name: "Mystery" },
                        { name: "Non-Fiction" },
                        { name: "Romance" },
                      ])

# Users
puts "Seeding users...🌱"
users = User.create([
                      { email: "john.doe@example.com", encrypted_password: "password1", first_name: "John",
                        last_name: "Doe" },
                      { email: "jane.smith@example.com", encrypted_password: "password2", first_name: "Jane",
                        last_name: "Smith" },
                      { email: "alice.jones@example.com", encrypted_password: "password3", first_name: "Alice",
                        last_name: "Jones" },
                      { email: "bob.brown@example.com", encrypted_password: "password4", first_name: "Bob",
                        last_name: "Brown" },
                      { email: "charlie.davis@example.com", encrypted_password: "password5", first_name: "Charlie",
                        last_name: "Davis" },
                    ])

# Books
puts "Seeding books...🌱"
books = Book.create([
                      { title: "Dune", author: "Frank Herbert", genre: genres[0] },
                      { title: "The Hobbit", author: "J.R.R. Tolkien", genre: genres[1] },
                      { title: "The Da Vinci Code", author: "Dan Brown", genre: genres[2] },
                      { title: "Sapiens", author: "Yuval Noah Harari", genre: genres[3] },
                      { title: "Pride and Prejudice", author: "Jane Austen", genre: genres[4] },
                    ])

# Reviews
puts "Seeding reviews...🌱"
reviews = Review.create([
                          { user: users[0], book: books[0], rating: 5,
                            content: "An epic masterpiece of science fiction!" },
                          { user: users[1], book: books[1], rating: 4,
                            content: "A delightful adventure in Middle-Earth." },
                          { user: users[2], book: books[2], rating: 3,
                            content: "A thrilling mystery with unexpected twists." },
                          { user: users[3], book: books[3], rating: 5,
                            content: "A fascinating exploration of human history." },
                          { user: users[4], book: books[4], rating: 4,
                            content: "A timeless romance with sharp social commentary." },
                        ])

# UserBooks
puts "Seeding user_books...🌱"
user_books = UserBook.create([
                               { user: users[0], book: books[0] },
                               { user: users[0], book: books[1] },
                               { user: users[1], book: books[2] },
                               { user: users[2], book: books[3] },
                               { user: users[3], book: books[4] },
                             ])

# UserGenres
puts "Seeding user_genres...🌱"
user_genres = UserGenre.create([
                                 { user: users[0], genre: genres[0] },
                                 { user: users[0], genre: genres[1] },
                                 { user: users[1], genre: genres[2] },
                                 { user: users[2], genre: genres[3] },
                                 { user: users[3], genre: genres[4] },
                               ])
puts "Seeding complete! 🌳"
