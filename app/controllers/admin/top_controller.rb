class Admin::TopController < Admin::BaseController
  def index
    @random_post = Post.order("RANDOM()").first
  end
end
