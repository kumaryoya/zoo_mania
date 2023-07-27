class LinebotController < ApplicationController
  skip_before_action :verify_authenticity_token
  require 'line/bot'

  def callback
    "OK"
  end
end
