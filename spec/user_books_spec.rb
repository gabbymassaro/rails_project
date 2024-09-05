require 'rails_helper'

RSpec.describe 'UserBook' do

  it 'is not valid without a user association' do
    user_book = build(:user_book, user_id: nil)
    expect(user_book).to_not be_valid
  end

  it 'is not valid without a book association' do
    user_book = build(:user_book, book_id: nil)
    expect(user_book).to_not be_valid
  end
end