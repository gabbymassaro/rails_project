## 1) Login/Sign Up

### User Story

- As a new user, I need a sign up page to create an account with Reading on Rails.
- As a current user, I need a login page to access my account and edit my account settings.
- As a current user, I need to be able to logout when I'm no longer accessing the site actively.

## 2) Migrations

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

## 3) Models

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

## 4) Create Seed Data and Install Sqlite3

### User Story

As a developer, I want to be able to seed my database with mock data to test my CRUD as it's being worked on. I would like to include a DB gui to visualize my data as well.

## 5) Display 'My Books' and Bio on Profile

### User Story

As a user, I want to see all the books I've added to 'My Books'. I also want to see my bio (name, favorite genres, average book rating [empty for now], and member since date).

## 6) Link_to and Creation of Individual Books Page

### User Story

As a user, I want the section of 'My Books' to link to each book in my list.
The Book page should display:

- The title
- The Author
- Average Rating and Number of Ratings
- Genre
- Reviews
- Button 'Add Book To List'
- Button 'Leave A Review'

## 7) Leave Review Functionality

### User Story

As a user, if I click 'Leave A Review' on a book, I should be redirected to the new/review page.
There should be a form to leave a star rating out of 5 and a text_area to leave my review.
When a review is successfully created, the user should be redirected to the books show page.

## 8) Books Index

### User Story

As a user, I want to search for books to read or books I have recently read. Create a books index page that you can search for and display books available on the app.

## 9) Form Validations and Conditionals

### User Story

When creating a new review, users are required to give a rating and fill out the content(labeled review). Display flash error message.

A user should not see the 'Add to List' button on a book if they already have that book on their list.

A user can only leave one review on any particular book.

## 10) Search: Books Index

### User Story

As a user, I want to be able to search by title or author and list the results on the page.

## 11) Creating Profile Pictures With Active Storage

### User Story

As a user, I want to be able to upload and see a photo as my profile picture. Install active_storage and create an initial image upload on a users profile. Just one image associated with one user/profile.

## 12) Light Styling: BootStrap

### User Story

As a developer, I want to start implementing bootstrap for styling my app. Start with cards and forms.

## 13) Seed Book Cover Images Using Active Storage

### User Story

As a developer, I want my database to have images for each book in my 'books' table. Create a has_one_attached relationship between 'books' and active storage. Update seed data to include an 'images' folder that holds the images for each book. Create one book cover for now, create a default image if no cover is available.

## 14) Add First and Last Name to Sign Up/Account Settings Criteria

### User Story

Add extra User fields to required paramaters for sign up and account settings (edit). Fix small bugs and UI issues as well.

## 15) Clean Up / Refactor MVC

### User Story

Devise setup works great for getting userauth off the ground, but it comes with a lot of extra features/files that won't be needed for this app. Remove unused features, create a separate profiles controller (take out of home_controller), and create a separate profile views.
