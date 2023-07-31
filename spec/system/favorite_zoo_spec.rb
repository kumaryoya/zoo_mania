require 'rails_helper'

RSpec.describe 'FavoriteZoos', type: :system do
  before do
    @user = FactoryBot.create(:user, email: "test@example.com")
    @zoo1 = FactoryBot.create(:zoo, name: "zoo1")
    @zoo2 = FactoryBot.create(:zoo, name: "zoo2")
    @zoo3 = FactoryBot.create(:zoo, name: "zoo3")
  end

  describe "お気に入り動物園" do
    describe "新規登録" do
      context 'フォームの入力値が正常' do
        it '1位を登録することができる' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "1", from: "順位"
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo1.name)
        end

        it '2位を登録することができる' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "2", from: "順位"
          select "zoo2", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo2.name)
        end

        it '3位を登録することができる' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "3", from: "順位"
          select "zoo3", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo3.name)
        end
      end

      context 'フォームの入力値が正常でない' do
        it '順位が未選択では登録することはできない' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できなかったゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
        end

        it '動物園が未選択では登録することはできない' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "1", from: "順位"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できなかったゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
        end

        it '同じ順位を登録することはできない' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "1", from: "順位"
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo1.name)
          select "1", from: "順位"
          select "zoo2", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できなかったゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
        end

        it '同じ動物園を登録することはできない' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "1", from: "順位"
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo1.name)
          select "2", from: "順位"
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できなかったゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
        end
      end
    end
    describe "削除" do
      context 'お気に入り動物園の削除' do
        it '削除することができる' do
          login_as(@user)
          visit new_user_favorite_zoo_path(@user)
          select "1", from: "順位"
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content 'お気に入りの動物園を追加できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
          expect(page).to have_content(@zoo1.name)
          click_on '削除'
          expect(page.accept_confirm).to eq '削除しますか？'
          expect(page).to have_content 'お気に入りの動物園を削除できたゾゥ'
          expect(page).to have_current_path(new_user_favorite_zoo_path(@user))
        end
      end
    end
  end
end
