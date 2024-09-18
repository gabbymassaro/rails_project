require 'rails_helper'
require "view_component/test_helpers"

RSpec.describe 'Profile Bio Component', type: :component do
  let(:user) { User.create(first_name: "Gabriella", last_name: "Romanowski", genres: [genre1, genre2]) }
  let(:genre1) { Genre.create(name: "Fantasy") }
  let(:genre2) { Genre.create(name: "Science Fiction") }

  before do
    allow_any_instance_of(ProfileBioComponent).to receive(:member_since_date).and_return("September 2024")
  end

  it "renders the user's full name" do
    render_inline(ProfileBioComponent.new(user: user))

    expect(page).to have_content("Name: Gabriella Romanowski")
  end

  it "renders the member since date" do
    render_inline(ProfileBioComponent.new(user: user))

    expect(page).to have_content("Member Since:")
    expect(page).to have_content("September 2024")
  end

  it "renders the favorite genres" do
    render_inline(ProfileBioComponent.new(user: user))
    expect(page).to have_link("Favorite Genres: ", href: favorite_genres_edit_path)
    expect(page).to have_content("Fantasy")
    expect(page).to have_content("Science Fiction")
  end
end