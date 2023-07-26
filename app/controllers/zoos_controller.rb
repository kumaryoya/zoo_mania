class ZoosController < ApplicationController
  def index
    @q = Zoo.ransack(params[:q])
    @zoos_by_area = @q.result(distinct: true).order(id: :asc).all.group_by(&:area)
  end

  def show
    @zoo = Zoo.find(params[:id])
    @posts = @zoo.posts.page(params[:page]).per(12)
  end

  def ranking
    @top_zoos = Zoo.top_ten
  end
end
