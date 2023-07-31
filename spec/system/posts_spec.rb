require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  before do
    @user = FactoryBot.create(:user, email: "test@example.com")
    @zoo = FactoryBot.create(:zoo)
  end

  describe '新規投稿' do
    describe 'ログイン前' do
      context 'ログイン前' do
        it '新規投稿ができない' do
          visit new_post_path
          expect(page).to have_content 'ログインしてほしいゾゥ'
          expect(page).to have_current_path(login_path)
        end
      end
    end

    describe 'ログイン後' do
      context 'フォームの入力値が正常' do
        it '新規投稿が成功する' do
          login_as(@user)
          visit new_post_path
          fill_in 'タイトル', with: 'title'
          select "name1", from: "動物園"
          attach_file "画像", "spec/fixtures/images/logo.jpg"
          click_button '登録する'
          expect(page).to have_content '新規投稿'
          expect(page).to have_current_path(post_path(Post.last))
        end
      end
    end
  end
end
