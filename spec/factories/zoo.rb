FactoryBot.define do
  factory :zoo do
    sequence(:name) { |n| "name#{n}" }
    sequence(:location) { |n| "location#{n}" }
    sequence(:area) { |n| "area#{n}" }
    sequence(:prefecture) { |n| "prefecture#{n}" }
    sequence(:link) { |n| "link#{n}" }
  end
end
