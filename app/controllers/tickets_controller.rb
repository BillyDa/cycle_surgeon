class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new
    @ticket.user_id = current_user.id
    @ticket.repair = params[:ticket][:repair]
    @ticket.distance = params[:ticket][:distance]
    @ticket.cyclist_location = params[:ticket][:cyclist_location]
    @ticket.surgeon_location = params[:ticket][:surgeon_location]
    @ticket.description = params[:ticket][:description]
    @ticket.ticket_accepted = params[:ticket][:ticket_accepted]
    if @ticket.save
      flash[:alert] = ["Ticket submitted successfully. A Surgeon is on the way!"]
      redirect_to ticket_url(@ticket.id)
    else
      flash.now[:alert] = ["Your ticket was not submitted successfully. Please review your information."]
      render 'new'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    @user = current_user
    if current_user.surgeon == nil && current_user != @ticket.user_id
      redirect_to login_path
    else
      render
      @ticket.ticket_accepted = params[:ticket][:ticket_accepted]
      @ticket.ticket_accepted = params[:ticket][:surgeon_id]
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
    if @ticket.ticket_accepted
      flash[:alert] = ["This request is no longer available"]
      redirect_to tickets_url
    else
      # do the update!
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

  def destroy
    Ticket.find(params[:id]).destroy
    flash[:success] = "Ticket has been deleted"
    redirect_to user_url(user.id)
  end

end
