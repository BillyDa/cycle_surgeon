class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
   helper_method :current_user

   def require_login
     if !current_user
       flash[:notice] = "You must be logged in!"
       redirect_to 'new'
     end
   end
 end
