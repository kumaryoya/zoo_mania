class Admin::BaseController < ApplicationController
  before_action :require_login
  before_action :check_admin
  layout 'admin/layouts/application'

  private

  def not_authenticated
    redirect_to admin_login_path, alert: t('message.require_login')
  end

  def check_admin
    unless current_user && current_user.admin?
      redirect_to root_path, alert: t('message.no_authority')
    end
  end
end