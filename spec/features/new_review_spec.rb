require 'rails_helper'

RSpec.feature "Creating a New Review", type: :feature do

  let!(:user) { create(:user) }
  let!(:book) { create(:book, title: "Dune") }

  before do
    login_as(user, scope: :user)
  end

  it 'valid inputs' do
    visit new_book_review_path(book)
    choose("review_rating_5")
    fill_in "Review", with: "Amazing book with great depth and story!"
    click_on 'Create Review'

    expect(page).to have_current_path(book_path(book))
  end

  it 'invalid inputs' do
    visit new_book_review_path(book)
    fill_in "Review", with: "Amazing book with great depth and story!"
    click_on 'Create Review'

    expect(page).to have_content("Rating can't be blank")
  end

  it 'invalid inputs' do
    visit new_book_review_path(book)
    choose("review_rating_5")
    click_on 'Create Review'

    expect(page).to have_content("Content can't be blank")
  end
end