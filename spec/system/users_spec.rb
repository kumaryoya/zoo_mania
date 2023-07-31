require 'rails_helper'

RSpec.describe 'Users', type: :system do
  before do
    @user = FactoryBot.create(:user, email: "test@example.com")
  end

  describe 'ユーザー新規登録' do
    context 'フォームの入力値が正常' do
      it 'ユーザーの新規作成が成功する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: 'new@example.com'
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: 'password'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録が完了したゾゥ'
        expect(page).to have_current_path(root_path)
      end
    end

    context '名前が未入力' do
      it 'ユーザー登録が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: ''
        fill_in 'メールアドレス', with: 'new@example.com'
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: 'password'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end

    context 'メールアドレスが未入力' do
      it 'ユーザーの新規作成が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: ''
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: 'password'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end

    context 'パスワードが未入力' do
      it 'ユーザーの新規作成が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: 'new@example.com'
        fill_in 'パスワード', with: ''
        fill_in 'パスワード確認', with: 'password'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end

    context 'パスワード確認が未入力' do
      it 'ユーザーの新規作成が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: 'new@example.com'
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: ''
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end

    context 'パスワードとパスワード確認が一致しない' do
      it 'ユーザーの新規作成が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: 'new@example.com'
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: 'password_confirmation'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end

    context '登録済みのメールアドレスを使用' do
      it 'ユーザーの新規作成が失敗する' do
        visit new_user_path
        fill_in 'ニックネーム', with: 'name'
        fill_in 'メールアドレス', with: 'test@example.com'
        fill_in 'パスワード', with: 'password'
        fill_in 'パスワード確認', with: 'password'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録に失敗したゾゥ'
        expect(page).to have_current_path(new_user_path)
      end
    end
  end

  describe 'ユーザーログイン' do
    context '有効な値を入力したとき' do
      it 'ログインが成功する' do
        visit login_path
        fill_in 'メールアドレス', with: 'test@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログインする'
        expect(page).to have_content 'ログインできたゾゥ'
        expect(page).to have_current_path(root_path)
      end

      it 'ログインが失敗する' do
        visit login_path
        fill_in 'メールアドレス', with: 'login@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'ログインできなかったゾゥ'
        expect(page).to have_current_path(login_path)
      end
    end
  end

  describe 'ユーザーログアウト' do
    context 'ログインしているとき' do
      it 'ログアウトが成功する' do
        login_as(@user)
        find('.header_image .avatar').click
        click_link 'ログアウトする'
        expect(page.accept_confirm).to eq 'ログアウトしますか？'
        expect(page).to have_current_path(login_path)
      end
    end
  end
end
