FactoryBot.define do
  factory :user_genre do
    user { FactoryBot.create(:user) }
    genre { FactoryBot.create(:genre) }
  end
end