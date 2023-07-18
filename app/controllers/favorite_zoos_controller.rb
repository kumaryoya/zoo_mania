class FavoriteZoosController < ApplicationController
  before_action :require_login
  before_action :set_user, only: %i[create destroy]

  def index
    @posts = current_user.likes.includes(:post, :user).order(created_at: :desc).map(&:post)
  end

  def create
    @favorite_zoo = @user.favorite_zoos.build(favorite_zoo_params)
    if @favorite_zoo.save
      redirect_to profile_path, notice: t(".success_create_favotite_zoo")
    else
      @favorite_zoos = @user.favorite_zoos.order(rank: :asc)
      flash.now[:danger] = t(".fail_create_favotite_zoo")
      render template: "profiles/show", status: :unprocessable_entity
    end
  end

  def destroy
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
    redirect_to profile_path, notice: t(".success_delete_favotite_zoo") if @favorite_zoo.destroy!
  end

  private

  def favorite_zoo_params
    params.require(:favorite_zoo).permit(:zoo_id, :rank)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
