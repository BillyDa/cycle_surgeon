class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def show
    @user = current_user
    @user_tickets = Ticket.all.where(ticket_accepted: nil, user_id: current_user.id)

    if @user.surgeon == true
      @ticket_in_progress = Ticket.all.where(ticket_accepted: true, surgeon_id: current_user.id, active: true)
      # @user.surgeon_id = current_user.id
      # @user.address = params[:user][:address]

    elsif @user.surgeon == nil || @user.surgeon == false
      @ticket_in_progress_cyc = Ticket.all.where(ticket_accepted: true, user_id: current_user.id, active: true)

    end

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
    @user.address = params[:user][:address]

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_url(@user.id)
    else
      flash.now[:alert] = ['Failed to save account']
      render :new
    end
  end

  def update
    @user = current_user
    @user.address = params[:user][:address]
    @user.save
    redirect_to user_url(@user.id)
  end

end
