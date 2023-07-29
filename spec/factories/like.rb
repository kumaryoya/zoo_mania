FactoryBot.define do
  factory :like do
    association :user
    association :post
  end
end
