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
    @user = User.find(params[:id])
  end

  def index
    @tickets = Ticket.where(ticket_accepted: false)
    # @tickets = @tickets.order(:cyclist_location)
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
  end

  def destroy
    Ticket.find(params[:id]).destroy
    flash[:success] = "Ticket has been deleted"
    redirect_to user_url(user.id)
  end

end
