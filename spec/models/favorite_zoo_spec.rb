require 'rails_helper'

RSpec.describe FavoriteZoo, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:zoo) { FactoryBot.create(:zoo) }

  describe "バリデーションが正しく設定されていること" do
    it "ユーザー、動物園、ランクがあれば登録できること" do
      favorite_zoo1 = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 1)
      favorite_zoo2 = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 2)
      favorite_zoo3 = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 3)
      expect(favorite_zoo1).to be_valid
      expect(favorite_zoo2).to be_valid
      expect(favorite_zoo3).to be_valid
    end

    it "ランクがないと登録できないこと" do
      favorite_zoo = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: nil)
      expect(favorite_zoo).to be_invalid
    end

    it "ランクには1~3しか登録できないこと" do
      favorite_zoo = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 4)
      expect(favorite_zoo).to be_invalid
    end

    it "ランクには整数しか登録できないこと" do
      favorite_zoo = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 2.5)
      expect(favorite_zoo).to be_invalid
    end

    it "同じランクには1つしか登録できないこと" do
      FactoryBot.create(:favorite_zoo, user: user, zoo: zoo, rank: 1)
      favorite_zoo = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 1)
      expect(favorite_zoo).to be_invalid
    end

    it "同じ動物園は1つしか登録できないこと" do
      FactoryBot.create(:favorite_zoo, user: user, zoo: zoo, rank: 1)
      favorite_zoo = FactoryBot.build(:favorite_zoo, user: user, zoo: zoo, rank: 2)
      expect(favorite_zoo).to be_invalid
    end
  end
end
