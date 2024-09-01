class Book < ApplicationRecord
  belongs_to :genre
  has_many :reviews
  has_many :user_books
  has_many :users, through: :user_books

  def self.search(query)
    if query
      Book.where("title LIKE ?", "%#{query}%").or(Book.where("author LIKE ?", "%#{query}%"))
    else
      Book.all
    end
  end
end
