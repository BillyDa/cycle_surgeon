class AcceptedController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @user = current_user
    # @ticket.ticket.repair_types = Ticket.find(params[:id])
    @ticket_repair_string = Ticket.repair_types[@ticket.id]
    @user_surgeon_tick = Ticket.all

  end

  def new

  end

  def create

  end

  def update
    @ticket = Ticket.all.where(active: false)
  end

  def destroy
    @ticket = Ticket.find(params[:id])
  end
end
