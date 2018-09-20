class UserSessionsController < ApplicationController

  def new
    puts "................... #{session[:user_id]}"
    if session[:user_id] == ""
      puts 'hello world'
      render 'new'
      # If the user is not logged in the terminal will say hello world, and render the new page.
    else
      puts 'goodbye world'
      redirect_to user_url(session[:user_id])
      # if the user is logged in, terminal says goodbye world and redirects to their profile page based on their session's user ID
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_url(user.id)
    else
      flash.now[:errors] = ['E-mail and Password do not match']
      render 'new'
    end
  end

  def destroy
    session[:user_id] = ""
    redirect_to root_url, notice: "Logged out successfully"
  end

end
