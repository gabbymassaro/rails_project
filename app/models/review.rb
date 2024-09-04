class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :rating, :content, :user_id, :book_id, presence: true

  def self.average_rating
    average(:rating)
  end
end
