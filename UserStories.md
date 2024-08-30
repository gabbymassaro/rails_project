## Title: Login/Sign Up

### User Story

- As a new user, I need a sign up page to create an account with Reading on Rails.
- As a current user, I need a login page to access my account and edit my account settings.
- As a current user, I need to be able to logout when I'm no longer accessing the site actively.

## Title: Migrations

### User Story

- Add columns `first_name` and `last_name` to **`users`** table
- Create **`user_books`** table, columns:
  - user_id
  - book_id
- Create **`user_genres`** table, columns:
  - user_id
  - genre_id
- Create **`books`** table, columns:
  - title
  - author
  - genre_id
- Create **`genres`** table, columns:
  - name
- Create **`reviews`** table, columns:
  - user_id
  - book_id
  - rating
  - content

## Title: Models

### User Story

Create models for each table, include associations/relationships
**Books**

- belongs_to :genre
- has_many :reviews
- has_many :users, through: :reviews

**Genres**

- has_many :books
- has_many :user_genres
- has_many :users, through: :user_genres

**Users**

- has_many :user_books
- has_many :books, through: :user_books
- has_many :user_genres
- has_many :genres, through :user_genres
- has_many :reviews

**UserGenres**

- belongs_to :user
- belongs_to :genre

**UserBooks**

- belongs_to :user
- belongs_to :book

## Title: Views and Controllers

### User Story

Create Views and Controllers for all the models.

## Title: Create Seed Data and Install Sqlite3

### User Story

As a developer, I want to be able to seed my database with mock data to test my CRUD as it's being worked on. I would like to include a DB gui to visualize my data as well.
