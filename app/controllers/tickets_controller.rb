class TicketsController < ApplicationController

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @ticket = Ticket.new
    @ticket.user_id = current_user.id
    @ticket.repair = params[:ticket][:repair]
    @ticket.distance = params[:ticket][:distance]
    @ticket.cyclist_location = params[:ticket][:cyclist_location]
    @ticket.surgeon_location = params[:ticket][:surgeon_location]

    if @ticket.save
      flash.now[:alert] = ["Ticket submitted successfully. A Surgeon is on the way!"]
    else
      flash.now[:alert] = ["Your ticket was not submitted successfully. Please review your information."]
    end
  end

  def show
  end

  def destroy
  end

end
