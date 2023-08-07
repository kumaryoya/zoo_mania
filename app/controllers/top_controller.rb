class TopController < ApplicationController
  def index
    @random_zpost = Post.order("RANDOM()").first
  end

  def privacy_policy; end

  def terms_of_service; end
end
