require 'rails_helper'
require "view_component/test_helpers"

RSpec.describe 'Profile Bio Component', type: :component do
  let(:genre1) { Genre.create(name: "Fantasy") }
  let(:genre2) { Genre.create(name: "Science Fiction") }
  let(:user) { User.create(first_name: "Gabriella", last_name: "Romanowski", genres: [genre1, genre2]) }
  let(:component) { ProfileBioComponent.new(user: user) }

  before do
    allow(user).to receive(:created_at).and_return(Time.new(2024, 9, 1))
  end

  it "renders the user's full name" do
    render_inline(ProfileBioComponent.new(user: user))

    expect(page).to have_content("Name: Gabriella Romanowski")
  end

  it "renders the member since date" do
    expect(component.member_since_date).to eq("September 2024")
  end

  it "renders the favorite genres" do
    render_inline(ProfileBioComponent.new(user: user))
    expect(page).to have_content("Favorite Genres: ")
    expect(page).to have_content("Fantasy")
    expect(page).to have_content("Science Fiction")
  end
end