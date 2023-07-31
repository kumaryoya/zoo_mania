require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  before do
    @user = FactoryBot.create(:user, email: "test@example.com")
    @zoo1 = FactoryBot.create(:zoo, name: "zoo1")
    @zoo2 = FactoryBot.create(:zoo, name: "zoo2")
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
          select "zoo1", from: "動物園"
          attach_file "画像", "spec/fixtures/images/logo.jpg"
          click_button '登録する'
          expect(page).to have_content 'title'
          expect(page).to have_current_path(post_path(Post.last))
        end
      end

      context 'フォームの入力値が正常でない' do
        it 'タイトルが未入力だと新規投稿できない' do
          login_as(@user)
          visit new_post_path
          fill_in 'タイトル', with: ''
          select "zoo1", from: "動物園"
          attach_file "画像", "spec/fixtures/images/logo.jpg"
          click_button '登録する'
          expect(page).to have_content '投稿できなかったゾゥ'
          expect(page).to have_current_path(new_post_path)
        end

        it '画像がないと新規投稿できない' do
          login_as(@user)
          visit new_post_path
          fill_in 'タイトル', with: 'title'
          select "zoo1", from: "動物園"
          click_button '登録する'
          expect(page).to have_content '投稿できなかったゾゥ'
          expect(page).to have_current_path(new_post_path)
        end
      end
    end
  end

  describe '投稿削除' do
    context '投稿が削除できる' do
      it '投稿が削除できる' do
        login_as(@user)
        visit new_post_path
        fill_in 'タイトル', with: 'title'
        select "zoo1", from: "動物園"
        attach_file "画像", "spec/fixtures/images/logo.jpg"
        click_button '登録する'
        click_on '削除'
        expect(page.accept_confirm).to eq '削除しますか？'
        expect(page).to have_content '投稿を削除できたゾゥ'
        expect(page).to have_current_path(posts_path)
      end
    end
  end

  describe '投稿編集' do
    context '有効な値を入力したとき' do
      it '投稿が更新できる' do
        login_as(@user)
        visit new_post_path
        fill_in 'タイトル', with: 'title'
        select "zoo1", from: "動物園"
        attach_file "画像", "spec/fixtures/images/logo.jpg"
        click_button '登録する'
        click_on '編集'
        fill_in 'タイトル', with: 'edit_title'
        select "zoo2", from: "動物園"
        click_button '更新する'
        expect(page).to have_content '投稿を更新できたゾゥ'
        expect(page).to have_content 'edit_title'
        expect(page).to have_content 'zoo2'
        expect(page).to have_current_path(post_path(1))
      end
    end

    context '無効な値を入力したとき' do
      it '投稿が更新できない' do
        login_as(@user)
        visit new_post_path
        fill_in 'タイトル', with: 'title'
        select "zoo1", from: "動物園"
        attach_file "画像", "spec/fixtures/images/logo.jpg"
        click_button '登録する'
        click_on '編集'
        fill_in 'タイトル', with: ''
        select "zoo2", from: "動物園"
        click_on '更新する'
        expect(page).to have_content '投稿を更新できなかったゾゥ'
        expect(page).to have_current_path(edit_post_path(1))
      end
    end
  end
end
