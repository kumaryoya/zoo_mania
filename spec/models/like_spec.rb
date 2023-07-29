require 'rails_helper'

RSpec.describe Like, type: :model do
  it "ユーザーIDとポストIDがあればいいねできる" do
    expect(FactoryBot.create(:like)).to be_valid
  end

  it "ユーザーIDがなければ投稿できない" do
    expect(FactoryBot.build(:like, user_id: "")).to_not be_valid
  end

  it "ポストIDがなければ投稿できない" do
    expect(FactoryBot.build(:like, post_id: "")).to_not be_valid
  end

  it "同じ投稿にはいいねできない" do
    like = FactoryBot.create(:like)
    expect(FactoryBot.build(:like, user: like.user, post: like.post)).not_to be_valid
  end
end
