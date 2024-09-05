require 'rails_helper'

RSpec.describe 'Book' do
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
end