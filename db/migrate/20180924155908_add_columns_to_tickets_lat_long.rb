class AddColumnsToTicketsLatLong < ActiveRecord::Migration[5.2]
  def up
    add_column :tickets, :user_lat, :float
    add_column :tickets, :user_lon, :float
    add_column :tickets, :surgeon_lat, :float
    add_column :tickets, :surgeon_lon, :float
    end
  def down
    remove_column :tickets, :cyclist_location
    remove_column :tickets, :surgeon_location
  end
end
