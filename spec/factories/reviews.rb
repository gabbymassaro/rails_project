FactoryBot.define do
  factory :review do
    rating { 5 }
    content { Faker::Lorem.paragraph(sentence_count: 3) }
    book { FactoryBot.create(:book) }
    user { FactoryBot.create(:user) }
  end
end