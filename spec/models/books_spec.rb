require 'rails_helper'

RSpec.describe 'Book' do

  it 'is not valid without a title' do
    book = build(:book, title: nil)
    expect(book).to_not be_valid
  end

  it 'is not valid without a author' do
    book = build(:book, author: nil)
    expect(book).to_not be_valid
  end

  it 'is not valid without a genre_id' do
    book = build(:book, genre_id: nil)
    expect(book).to_not be_valid
  end

  context 'validations' do
    it 'validates uniqueness of title' do
      create(:book, title: "Harry Potter")

      duplicate_book_title = build(:book, title: "Harry Potter")
      expect(duplicate_book_title).not_to be_valid
    end
  end

  describe '.search' do
    it 'returns the query results for a book by title' do
      book = build(:book)
      expect(book.title).to eq(book.title)
    end

    it 'returns the query results for a book by author' do
      book = build(:book)
      expect(book.author).to eq(book.author)
    end
  end

  describe '#average_rating' do
    before do
      @book = create(:book)
      create(:review, book: @book, rating: 5)
      create(:review, book: @book, rating: 3)
    end

    it 'returns the average of all the reviews for a specific book' do
      expect(@book.average_rating).to eq(4)
    end
  end
end