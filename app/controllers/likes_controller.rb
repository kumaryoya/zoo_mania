class LikesController < ApplicationController
  before_action :set_post, only: %i[create destroy]

  def create
    @post.likes.create(user: current_user)
    respond_to(&:turbo_stream)
  end

  def destroy
    @like = @post.likes.find_by(user: current_user)
    @like.destroy
    respond_to(&:turbo_stream)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
