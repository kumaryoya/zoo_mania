class ZoosController < ApplicationController
  def index
    @zoos_by_area = Zoo.all.group_by(&:area)
  end

  def show
    @zoo = Zoo.find(params[:id])
    @posts = @zoo.posts.page(params[:page]).per(12)
  end

  def ranking
    @top_zoos = Zoo.top_ten
  end
end
