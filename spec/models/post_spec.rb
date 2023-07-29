require 'rails_helper'

RSpec.describe Post, type: :model do
  it "タイトルと画像とユーザーIDと動物園IDがあれば投稿できる" do
    expect(FactoryBot.create(:post)).to be_valid
  end

  it "タイトルがなければ投稿できない" do
    expect(FactoryBot.build(:post, title: "")).to_not be_valid
  end

  it "タイトルが255文字以下でなければ投稿できない" do
    expect(FactoryBot.build(:post, title: "a" * 256)).to_not be_valid
  end

  it "画像がなければ投稿できない" do
    expect(FactoryBot.build(:post, image: "")).to_not be_valid
  end

  it "ユーザーIDがなければ投稿できない" do
    expect(FactoryBot.build(:post, user_id: "")).to_not be_valid
  end

  it "動物園IDがなければ投稿できない" do
    expect(FactoryBot.build(:post, zoo_id: "")).to_not be_valid
  end
end
