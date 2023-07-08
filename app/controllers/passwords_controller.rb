class PasswordsController < ApplicationController
  before_action :require_edit_permission, only: [:edit, :update]

  def edit; end

  def update
    if password_changed? && @user.update(user_params)
      redirect_to zoos_path, notice: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :avatar, :avatar_cash)
  end

  def require_edit_permission
    @user = User.find(params[:user_id])
    return if @user == current_user
    redirect_to root_path, notice: t('.no_authority')
  end

  def password_changed?
    user_params[:password].present? || user_params[:password_confirmation].present?
  end
end
