class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :user_books
  has_many :books, through: :user_books
  has_many :user_genres
  has_many :genres, through: :user_genres
  has_one_attached :image

  def image_as_thumbnail
    image.variant(resize_to_limit: [150, 150]).processed
  end
end
