class UserSessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      redirect_to user_url(user.id)
    else
      render 'new'
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out successfully"
  end
end
