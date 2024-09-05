require 'rails_helper'

RSpec.describe 'UserGenre' do

  it 'is not valid without a user association' do
    user_genre = build(:user_genre, user_id: nil)
    expect(user_genre).to_not be_valid
  end

  it 'is not valid without a genre association' do
    user_genre = build(:user_genre, genre_id: nil)
    expect(user_genre).to_not be_valid
  end
end