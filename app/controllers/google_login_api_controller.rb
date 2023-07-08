class GoogleLoginApiController < ApplicationController
  require 'googleauth/id_tokens/verifier'
  protect_from_forgery except: :callback
  before_action :verify_g_csrf_token

  def callback
    payload = Google::Auth::IDTokens.verify_oidc(params[:credential], aud: '288360666860-8fku5g6vlc42pabvmc7ui2iuebef29un.apps.googleusercontent.com')
    if user = User.find_by(email: payload['email'])
      session[:user_id] = user.id
      redirect_to zoos_path, notice: t('.success')
    else
      user = User.new(email: payload['email'], name: 'ライオン', password: 'password', password_confirmation: 'password')
      if user.save
        session[:user_id] = user.id
        redirect_to edit_user_password_path(user), notice: t('.reqire_change')
      else
        redirect_to root_path, notice: t('.fail')
      end
    end
  end

  private

  def verify_g_csrf_token
    if cookies["g_csrf_token"].blank? || params[:g_csrf_token].blank? || cookies["g_csrf_token"] != params[:g_csrf_token]
      redirect_to root_path, fail: "unauthorized_access"
    end
  end
end
