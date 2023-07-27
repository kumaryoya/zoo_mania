class PostsController < ApplicationController
  before_action :require_login, only: %i[new create edit update destroy]
  before_action :set_post, only: %i[edit update destroy]

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).all.includes(:user).includes(:zoo).order(created_at: :desc).page(params[:page]).per(12)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      notify_line('新しい投稿があるゾゥ！')
      redirect_to post_path(@post), notice: t('.success_create_post')
    else
      flash.now['danger'] = t('.fail_create_post')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: t('.success_update_post')
    else
      flash.now['danger'] = t('.fail_update_post')
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, notice: t('.success_delete_post')
  end

  def ranking
    @top_posts = Post.top_ten
  end

  def my_posts
    @posts = current_user.posts.order(created_at: :desc).page(params[:page]).per(12)
  end

  def my_like_posts
    @posts = current_user.likes.includes(:post, :user).order(created_at: :desc).map(&:post)
  end

  def stamp_rally
    @zoos = Zoo.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :zoo_id, :image, :image_cache)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def notify_line(message)
    url = URI.parse('https://api.line.me/v2/bot/message/broadcast')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Bearer #{ENV['LINE_CHANNEL_ACCESS_TOKEN']}"
    }
    body = {
      messages: [
        {
          type: 'text',
          text: message
        }
      ]
    }
    response = http.post(url.path, body.to_json, headers)
    puts "LINE通知のレスポンス: #{response.body}"
  end
end
