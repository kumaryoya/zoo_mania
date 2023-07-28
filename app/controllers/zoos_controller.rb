class ZoosController < ApplicationController
  def index
    @q = Zoo.ransack(params[:q])
    @zoos_by_area = @q.result(distinct: true).order(id: :asc).all.group_by(&:area)
  end

  def show
    @zoo = Zoo.find(params[:id])
    @posts = @zoo.posts.page(params[:page]).per(12)
  end

  def map
    @zoos = Zoo.all
  end

  def ranking
    @top_zoos = Zoo.top_ten
  end

  def recommend
    if logged_in?
      user_post_zoo_ids = current_user.posts.pluck(:zoo_id)
      @zoos = Zoo.where.not(id: user_post_zoo_ids)
    else
      @zoos = Zoo.all
    end
  end
end
