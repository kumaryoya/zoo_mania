FactoryBot.define do
  factory :post do
    title { "title" }
    image { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/images/logo.jpg"), 'image/jpeg') }
    association :user
    association :zoo
  end
end
