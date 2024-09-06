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
                        { name: "Classic Literature" },
                        { name: "Dystopian" },
                        { name: "Adventure" },
                        { name: "Historical Fiction" },
                        { name: "Philosophy" },
                      ])

# Users
puts "Seeding users...🌱"
users = User.create([
                      { email: "john.doe@example.com", password: "password1", first_name: "John", last_name: "Doe" },
                      { email: "jane.smith@example.com", password: "password2", first_name: "Jane",
                        last_name: "Smith" },
                      { email: "alice.jones@example.com", password: "password3", first_name: "Alice",
                        last_name: "Jones" },
                      { email: "bob.brown@example.com", password: "password4", first_name: "Bob", last_name: "Brown" },
                      { email: "charlie.davis@example.com", password: "password5", first_name: "Charlie",
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
                      { title: "1984", author: "George Orwell", genre: genres[6] },
                      { title: "To Kill a Mockingbird", author: "Harper Lee", genre: genres[5] },
                      { title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: genres[9] },
                      { title: "The Count of Monte Cristo", author: "Alexandre Dumas", genre: genres[8] },
                    ])

# Attach image to book
dune = Book.find_by(title: "Dune")
dune.image.attach(
  io: File.open(Rails.root.join("db", "images", "dune.jpg")),
  filename: "dune.jpg"
)
nineteen = Book.find_by(title: "1984")
nineteen.image.attach(
  io: File.open(Rails.root.join("db", "images", "1984.jpg")),
  filename: "1984.jpg"
)
crime = Book.find_by(title: "Crime and Punishment")
crime.image.attach(
  io: File.open(Rails.root.join("db", "images", "crime_and_punishment.jpg")),
  filename: "crime_and_punishment.jpg"
)

# Reviews
puts "Seeding reviews...🌱"
Review.create!([
                 { user: users[0], book: Book.find_by(title: "Dune"), rating: 5,
                   content: "An epic masterpiece of science fiction!" },
                 { user: users[1], book: Book.find_by(title: "The Hobbit"), rating: 4,
                   content: "A delightful adventure in Middle-Earth." },
                 { user: users[2], book: Book.find_by(title: "The Da Vinci Code"), rating: 3,
                   content: "A thrilling mystery with unexpected twists." },
                 { user: users[3], book: Book.find_by(title: "Sapiens"), rating: 5,
                   content: "A fascinating exploration of human history." },
                 { user: users[4], book: Book.find_by(title: "Pride and Prejudice"), rating: 4,
                   content: "A timeless romance with sharp social commentary." },
                 { user: users[0], book: Book.find_by(title: "1984"), rating: 5,
                   content: "A chilling vision of a dystopian future." },
                 { user: users[1], book: Book.find_by(title: "To Kill a Mockingbird"), rating: 5,
                   content: "A powerful exploration of justice and morality." },
                 { user: users[2], book: Book.find_by(title: "Crime and Punishment"), rating: 4,
                   content: "A complex narrative of guilt and redemption." },
                 { user: users[3], book: Book.find_by(title: "The Count of Monte Cristo"), rating: 5,
                   content: "A tale of revenge and adventure." },
                 { user: users[4], book: Book.find_by(title: "Dune"), rating: 5,
                   content: "Dune is a must-read for sci-fi fans." },
                 { user: users[0], book: Book.find_by(title: "The Hobbit"), rating: 3,
                   content: "The Hobbit is a fun read but not as epic as LOTR." },
               ])

# UserBooks
puts "Seeding user_books...🌱"
UserBook.create([
                  { user: users[0], book: books[0] },
                  { user: users[0], book: books[1] },
                  { user: users[1], book: books[2] },
                  { user: users[2], book: books[3] },
                  { user: users[3], book: books[4] },
                ])

# UserGenres
puts "Seeding user_genres...🌱"
UserGenre.create([
                   { user: users[0], genre: genres[0] },
                   { user: users[0], genre: genres[1] },
                   { user: users[1], genre: genres[2] },
                   { user: users[2], genre: genres[3] },
                   { user: users[3], genre: genres[4] },
                 ])
puts "Seeding complete! 🌳"
