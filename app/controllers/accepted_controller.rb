class AcceptedController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @user = current_user

  end
end
