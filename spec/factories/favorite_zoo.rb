FactoryBot.define do
  factory :favorite_zoo do
    association :user
    association :zoo
    rank { 1 }
  end
end
