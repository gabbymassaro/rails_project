class Book < ApplicationRecord
  belongs_to :genre
  has_many :reviews
  has_many :user_books
  has_many :users, through: :user_books
  has_one_attached :image

  validates :title, :author, :genre_id, presence: true
  validates :title, uniqueness: true

  default_scope { order(:title) }

  def self.search(query)
    if query
      Book.where("title LIKE ?", "%#{query}%").or(Book.where("author LIKE ?", "%#{query}%"))
    else
      Book.all
    end
  end

  def resize_book_covers
    image.variant(resize_to_limit: [250, 150]).processed
  end

  def average_rating
    reviews.average(:rating).to_f
  end
end
