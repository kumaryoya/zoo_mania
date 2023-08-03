class TopController < ApplicationController
  def index
    @random_post = Post.order("RANDOM()").first
  end

  def how_to_use; end

  def privacy_policy; end

  def terms_of_service; end
end
