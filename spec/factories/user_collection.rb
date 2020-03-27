FactoryBot.define do
  factory :user_collection do
    title { Faker::Hipster.words(number: 1).join(", ") }
    user
  end
end
