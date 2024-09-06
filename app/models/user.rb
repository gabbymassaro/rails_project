class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable, :rememberable
  has_many :reviews
  has_many :user_books
  has_many :books, through: :user_books
  has_many :user_genres
  has_many :genres, through: :user_genres
  has_one_attached :image

  validates :first_name, :last_name, presence: true
end
