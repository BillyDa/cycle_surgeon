class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new
    @ticket.user_id = current_user.id
    @ticket.repair = params[:ticket][:repair]
    @ticket.distance = params[:ticket][:distance]
    @ticket.user_lat = params[:ticket][:user_lat]
    @ticket.user_lon = params[:ticket][:user_lon]
    @ticket.surgeon_lat = params[:ticket][:surgeon_lat]
    @ticket.surgeon_lat = params[:ticket][:surgeon_lon]
    @ticket.description = params[:ticket][:description]
    @ticket.ticket_accepted = params[:ticket][:ticket_accepted]
    if @ticket.save
      flash[:alert] = ["Ticket submitted successfully. A Surgeon is on the way!"]
      redirect_to ticket_url(@ticket.id)
    else
      flash.now[:alert] = ["Your ticket was not submitted successfully. Please review your information."]
      render 'new'
      # comment more commments
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    @cyclist_username = User.find(@ticket.user_id).username
    # Had to iterate through the active record, and access the users table
    @user = current_user
    if current_user.surgeon == true
      @ticket.ticket_accepted = @ticket[:ticket_accepted]
      @ticket.surgeon_id = @ticket[:surgeon_id]
      @ticket.active = @ticket[:active]
    end



  end

  def index
    @tickets = Ticket.where(ticket_accepted: nil)
    if current_user.surgeon == true
      render
    else
      flash[:alert] = ["You do not have permission to view this page"]
      puts 'A cyclist is trying to view the ticket index'
      redirect_to root_url
    end
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.ticket_accepted == nil
      @ticket.ticket_accepted = params[:ticket][:ticket_accepted]
      @ticket.surgeon_id = current_user.id
      @ticket.surgeon_lat = params[:ticket][:surgeon_lat]
      @ticket.surgeon_lat = params[:ticket][:surgeon_lon]
      @ticket.save
      redirect_to accepted_path
    else
      @ticket.active = false
      @ticket.save
      redirect_to tickets_url

    end
  end

  def new
    @ticket = Ticket.new
    # if current_user.surgeon == true
    #   flash[:alert] = ["You do not have permission to view this page"]
    #   puts 'A surgeon is trying to view the ticket submit page'
    #   redirect_to root_url
    # else
    #   render
    # end
  end

  def accepted
    @ticket = Ticket.find(params[:id])
    if current_user == @ticket.user_id || current_user == @ticket.surgeon_id
      render
    else
      redirect_to root_url
    end
  end

  def destroy
    Ticket.find(params[:id]).destroy
    flash[:success] = "Ticket has been deleted"
    redirect_to root_url
  end

end
