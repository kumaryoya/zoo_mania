require 'rails_helper'

RSpec.describe 'Likes', type: :system do
  before do
    @user = FactoryBot.create(:user, email: "test@example.com")
    @like_user = FactoryBot.create(:user, email: "like@example.com")
    @post = FactoryBot.create(:post)
  end

  context 'いいね機能' do
    it 'いいねすることができる' do
      login_as(@like_user)
      visit posts_path
      sleep(2)
      before_like_count = @post.likes.count
      click_on "★"
      sleep(2)
      expect(@post.likes.count).to eq(before_like_count + 1)
    end

    it 'いいねを解除することができる' do
      login_as(@like_user)
      visit posts_path
      sleep(2)
      click_on "★"
      sleep(2)
      before_like_count = @post.likes.count
      click_on "★"
      sleep(2)
      expect(@post.likes.count).to eq(before_like_count - 1)
    end
  end
end
