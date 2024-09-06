require 'rails_helper'

RSpec.describe 'Genre' do

  it 'is not valid without a name' do
    genre = build(:genre, name: nil)
    expect(genre).to_not be_valid
  end

  context 'validations' do
    it 'validates uniqueness of name' do
      create(:genre, name: "Horror")

      duplicate_genre_name = build(:genre, name: "Horror")
      expect(duplicate_genre_name).not_to be_valid
    end
  end

end