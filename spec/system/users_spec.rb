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
        expect(page).to have_current_path(posts_path)
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

  describe 'ユーザー削除' do
    context 'ユーザー削除' do
      it 'ユーザーの退会が成功する' do
        login_as(@user)
        visit profile_path
        click_on '退会'
        expect(page.accept_confirm).to eq '退会しますか？'
        expect(page).to have_content '退会できたゾゥ'
        expect(page).to have_current_path(root_path)
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
        expect(page).to have_current_path(posts_path)
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
        find('.bg-main .avatar').click
        click_link 'ログアウトする'
        expect(page.accept_confirm).to eq 'ログアウトしますか？'
        expect(page).to have_current_path(login_path)
      end
    end
  end

  describe 'プロフィール' do
    context '有効な値を入力したとき' do
      it 'ニックネームが変更される' do
        login_as(@user)
        visit profile_path
        click_on '編集'
        fill_in 'ニックネーム', with: 'profile_edit'
        click_button '更新する'
        expect(page).to have_content 'プロフィールを更新できたゾゥ'
        expect(page).to have_content 'profile_edit'
        expect(page).to have_current_path(profile_path)
      end

      it 'メールアドレスが変更される' do
        login_as(@user)
        visit profile_path
        click_on '編集'
        fill_in 'メールアドレス', with: 'profile_edit@example.com'
        click_button '更新する'
        expect(page).to have_content 'プロフィールを更新できたゾゥ'
        expect(page).to have_content 'profile_edit@example.com'
        expect(page).to have_current_path(profile_path)
      end
    end

    context '無効な値を入力したとき' do
      it '更新されない' do
        login_as(@user)
        visit profile_path
        click_on '編集'
        fill_in 'ニックネーム', with: ''
        click_button '更新する'
        expect(page).to have_content 'プロフィールを更新できなかったゾゥ'
        expect(page).to have_current_path(edit_profile_path)
      end
    end
  end
end
