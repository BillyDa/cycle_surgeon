class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end

  helper_method :current_user

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login to do this"
  end

  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end


  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this page"
      redirect_to login_url # halts request cycle
    end
  end

end
