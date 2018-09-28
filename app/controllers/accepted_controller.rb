class AcceptedController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @user = current_user
    # @ticket.ticket.repair_types = Ticket.find(params[:id])
    @ticket_repair_string = Ticket.repair_types[@ticket.id]
    @user_surgeon_tick = Ticket.all
    @cyclist_username = User.find(@ticket.user_id).username
    @cyclist_email = User.find(@ticket.user_id).email

    gmaps = GoogleMapsService::Client.new

  end

  def update
    @ticket = Ticket.all.where(active: false)
  end

  def destroy
    @ticket = Ticket.find(params[:id])
  end

  def user_address

  end

  def surgeon_address

  end
end
