class AcceptedController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @user = current_user
    # @ticket.ticket.repair_types = Ticket.find(params[:id])
    @ticket_repair_string = Ticket.repair_types[@ticket.id]
    @user_surgeon_tick = Ticket.all

  end
end
