class AcceptedController < ApplicationController

  def show
    if current_user.surgeon && current_user.id == session[:user_id]
    @ticket = Ticket.find(params[:id])
    @user = current_user
    # @ticket.ticket.repair_types = Ticket.find(params[:id])
    @ticket_repair_string = Ticket.repair_types[@ticket.id]
    @user_surgeon_tick = Ticket.all

    gmaps = GoogleMapsService::Client.new
      else
        redirect_to user_url(@user.id)
      end
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
