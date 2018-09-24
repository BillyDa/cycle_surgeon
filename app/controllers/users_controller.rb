class UsersController < ApplicationController
 def new
   @user = User.new
 end

 def show
   @tickets = Ticket.all.where(user_id: current_user)
   @user = current_user
   # @user_accepted = @tickets.ticket_accepted
   if current_user.id == session[:user_id]
     render
   else
     flash[:alert] = ["You do not have permission to view this page"]
     redirect_to root_url
   end
 end

 def create
   @user = User.new
   @user.username = params[:user][:username]
   @user.email = params[:user][:email]
   @user.password = params[:user][:password]
   @user.password_confirmation = params[:user][:password_confirmation]
   @user.surgeon = params[:user][:surgeon]
   @user_surgeon_tick = Ticket.all 

   if @user.save
     session[:user_id] = @user.id
     redirect_to user_url(@user.id)
   else
     flash.now[:alert] = ['Failed to save account']
     render :new
   end
 end

end
