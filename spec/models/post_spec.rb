require 'rails_helper'

RSpec.describe Post, type: :model do
  it "タイトルと画像とユーザーIDと動物園IDがあれば投稿できる" do
    expect(FactoryBot.build(:post)).to be_valid
  end

  it "タイトルがなければ投稿できない" do
    expect(FactoryBot.build(:post, title: "")).to be_invalid
  end

  it "タイトルが255文字以下でなければ投稿できない" do
    expect(FactoryBot.build(:post, title: "a" * 256)).to be_invalid
  end

  it "画像がなければ投稿できない" do
    expect(FactoryBot.build(:post, image: "")).to be_invalid
  end

  it "ユーザーIDがなければ投稿できない" do
    expect(FactoryBot.build(:post, user_id: "")).to be_invalid
  end

  it "動物園IDがなければ投稿できない" do
    expect(FactoryBot.build(:post, zoo_id: "")).to be_invalid
  end
end
