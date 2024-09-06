require 'rails_helper'

RSpec.describe 'Review' do

  it 'is not valid without a rating' do
    review = build(:review, rating: nil)
    expect(review).to_not be_valid
  end

  it 'is not valid without content' do
    review = build(:review, content: nil)
    expect(review).to_not be_valid
  end

  it 'is not valid without a user associated to it' do
    review = build(:review, user_id: nil)
    expect(review).to_not be_valid
  end

  it 'is not valid without a book associated to it' do
    review = build(:review, book_id: nil)
    expect(review).to_not be_valid
  end
end