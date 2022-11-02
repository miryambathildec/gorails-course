class MainController < ApplicationController
  def index
    # This is the default action for the main controller
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
