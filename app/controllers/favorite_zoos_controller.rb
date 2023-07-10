class FavoriteZoosController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos
    @favorite_zoos = current_user.favorite_zoos.order(rank: :asc)
  end

  def create
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.build(favorite_zoo_params)
    @favorite_zoos = current_user.favorite_zoos.order(rank: :asc)
    if @favorite_zoo.save
      redirect_to new_user_favorite_zoo_path, notice: "お気に入りの動物園を追加しました。"
    else
      flash.now[:danger] = "失敗"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
    @favorite_zoos = current_user.favorite_zoos.order(rank: :asc)
    if @favorite_zoo.destroy
      redirect_to new_user_favorite_zoo_path, notice: "お気に入りの動物園を削除しました。"
    else
      flash.now[:danger] = "削除に失敗しました。"
      render :index, status: :unprocessable_entity
    end
  end

  private

  def favorite_zoo_params
    params.require(:favorite_zoo).permit(:zoo_id, :rank)
  end
end
