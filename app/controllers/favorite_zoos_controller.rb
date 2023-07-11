class FavoriteZoosController < ApplicationController

  def create
    @user = User.find(current_user.id)
    @favorite_zoo = @user.favorite_zoos.build(favorite_zoo_params)
    @favorite_zoos = current_user.favorite_zoos.order(rank: :asc)
    if @favorite_zoo.save
      redirect_to profile_path, notice: "お気に入りの動物園を追加しました。"
    else
      flash.now[:danger] = "作成できなかったゾゥ"
      render template: "profiles/show", status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(current_user.id)
    @favorite_zoo = @user.favorite_zoos.find(params[:id])
    @favorite_zoos = current_user.favorite_zoos.order(rank: :asc)
    if @favorite_zoo.destroy
      redirect_to profile_path, notice: "お気に入りの動物園を削除しました。"
    else
      flash.now[:danger] = "削除に失敗したゾゥ"
      render template: "profiles/show", status: :unprocessable_entity
    end
  end

  private

  def favorite_zoo_params
    params.require(:favorite_zoo).permit(:zoo_id, :rank)
  end
end
