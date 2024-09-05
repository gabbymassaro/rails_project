FactoryBot.define do
  factory :user_book do
    user { FactoryBot.create(:user) }
    book { FactoryBot.create(:book) }
  end
end