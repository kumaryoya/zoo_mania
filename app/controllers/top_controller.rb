class TopController < ApplicationController
  def index
    @random_post = Post.all.sample
  end

  def privacy_policy; end

  def terms_of_service; end
end
