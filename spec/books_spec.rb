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

  describe '#resize_book_covers' do
    before do
      @book = build(:book)
      allow(@book).to receive(:resize_book_covers)
    end

    it 'returns that the method was invoked' do
      @book.resize_book_covers
      expect(@book).to have_received(:resize_book_covers)
    end

    it 'returns that the method was not invoked' do
      expect(@book).not_to have_received(:resize_book_covers)
    end
  end
end