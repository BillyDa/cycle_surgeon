class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new
    @ticket.user_id = current_user.id
    @ticket.repair = params[:ticket][:repair]
    @ticket.distance = params[:ticket][:distance]
    @ticket.cyclist_location = params[:ticket][:cyclist_location]
    @ticket.surgeon_location = params[:ticket][:surgeon_location]

    if @ticket.save
      flash.now[:alert] = ["Ticket submitted successfully. A Surgeon is on the way!"]
      redirect_to ticket_url(@ticket.id)
    else
      flash.now[:alert] = ["Your ticket was not submitted successfully. Please review your information."]
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
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
