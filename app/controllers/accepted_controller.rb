class AcceptedController < ApplicationController

  def show
    if current_user.surgeon
    @ticket = Ticket.find(params[:id])
    @user = current_user
    # @ticket.ticket.repair_types = Ticket.find(params[:id])
    @ticket_repair_string = Ticket.repair_types[@ticket.id]
    @user_surgeon_tick = Ticket.all
    @cyclist_username = User.find(@ticket.user_id).username
    @cyclist_email = User.find(@ticket.user_id).email

    gmaps = GoogleMapsService::Client.new
      else
        flash[:notice] = "Only surgeons in the OR!"
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
