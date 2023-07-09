class FavoriteZoosController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos
  end

  def create
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.build(favorite_zoo_params)
    if @favorite_zoo.save
      redirect_to root_path, notice: "お気に入りの動物園を追加しました。"
    else
      flash.now[:danger] = "失敗"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
    if @favorite_zoo.update(favorite_zoo_params)
      redirect_to root_path, notice: "お気に入りの動物園を更新しました。"
    else
      flash.now[:danger] = "更新に失敗しました。"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
    if @favorite_zoo.destroy
      redirect_to root_path, notice: "お気に入りの動物園を削除しました。"
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
