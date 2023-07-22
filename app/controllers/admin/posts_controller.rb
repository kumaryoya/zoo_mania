class Admin::PostsController < Admin::BaseController
  before_action :find_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all.includes(:user).includes(:zoo).order(created_at: :asc)
  end

  def show; end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path, notice: t('.success_update_post')
    else
      flash.now['danger'] = t('.fail_update_post')
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy!
    redirect_to admin_posts_path, notice: t('.success_delete_post')
  end

  private

  def post_params
    params.require(:post).permit(:title, :zoo_id, :image, :image_cache)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
