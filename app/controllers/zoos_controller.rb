class ZoosController < ApplicationController
  def index
    @zoos_by_area = Zoo.all.group_by(&:area)
  end

  def show
    @zoo = Zoo.find(params[:id])
  end
end
