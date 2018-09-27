class LocationStuff < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :text
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float

    remove_column :tickets, :user_lat
    remove_column :tickets, :user_lon
    remove_column :tickets, :cyclist_location
    remove_column :tickets, :surgeon_location
    remove_column :tickets, :surgeon_lat
    remove_column :tickets, :surgeon_lon
    remove_column :tickets, :surgeon_latitude
    remove_column :tickets, :surgeon_longitude
  end
end
