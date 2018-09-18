class UsersController < ApplicationController
 def new
   @user = User.new
 end

 def show
   @user = User.find(params[:id])
 end

 def create
   @user = User.new
   @user.email = params[:user][:email]
   @user.password = params[:user][:password]
   @user.password_confirmation = params[:user][:password_confirmation]
   # @user.role = params[:user][:surgeon]

   if @user.save!
     session[:user_id] = @user.id
     redirect_to user_url(@user.id)
   else
     flash.now[:alert] = ['Failed to save account']
     render :new
   end
 end

 def is_surgeon?
 end

end
