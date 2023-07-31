require 'rails_helper'

RSpec.describe Like, type: :model do
  it "ユーザーIDとポストIDがあればいいねできる" do
    expect(FactoryBot.build(:like)).to be_valid
  end

  it "ユーザーIDがなければ投稿できない" do
    expect(FactoryBot.build(:like, user_id: "")).to be_invalid
  end

  it "ポストIDがなければ投稿できない" do
    expect(FactoryBot.build(:like, post_id: "")).to be_invalid
  end

  it "違う投稿ならいいねできる" do
    like = FactoryBot.create(:like)
    different_post = FactoryBot.create(:post)
    expect(FactoryBot.build(:like, user: like.user, post: different_post)).to be_valid
  end

  it "同じ投稿にはいいねできない" do
    like = FactoryBot.create(:like)
    expect(FactoryBot.build(:like, user: like.user, post: like.post)).to be_invalid
  end
end
