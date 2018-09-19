class AddTicketTakenColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :ticket_accepted, :boolean, :default => false
  end
end
