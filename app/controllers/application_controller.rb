class ApplicationController < ActionController::Base
  def not_authenticated
    redirect_to login_url, alert: t("message.require_login")
  end
end
