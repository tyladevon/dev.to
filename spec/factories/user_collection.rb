FactoryBot.define do
  factory :user_collection do
    title { Faker::Hipster.words(number: 4).join(", ") }
    user
  end
end
