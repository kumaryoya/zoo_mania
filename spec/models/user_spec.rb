require 'rails_helper'

RSpec.describe User, type: :model do
  it "名前とメールアドレスとパスワードがあれば登録できる" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "名前がなければ登録できない" do
    expect(FactoryBot.build(:user, name: "")).to be_invalid
  end

  it "メールアドレスがなければ登録できない" do
    expect(FactoryBot.build(:user, email: "")).to be_invalid
  end

  it "メールアドレスが重複していたら登録できない" do
    user = FactoryBot.create(:user)
    expect(FactoryBot.build(:user, email: user.email)).to be_invalid
  end

  it "パスワードがなければ登録できない" do
    expect(FactoryBot.build(:user, password: "")).to be_invalid
  end

  it "パスワード確認がなければ登録できない" do
    expect(FactoryBot.build(:user, password_confirmation: "")).to be_invalid
  end

  it "パスワードとパスワード確認が一致しなければ登録できない" do
    expect(FactoryBot.build(:user, password_confirmation: "password_confirmation")).to be_invalid
  end
end
