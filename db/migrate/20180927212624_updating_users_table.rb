class UpdatingUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :latitude, :float
    add_column :tickets, :longitude, :float
    add_column :tickets, :address, :text
    remove_column :tickets, :user_latitude
    remove_column :tickets, :user_longitude
    remove_column :tickets, :user_address
    remove_column :tickets, :user_street
    remove_column :tickets, :user_city
    remove_column :tickets, :user_province
    remove_column :tickets, :surgeon_address
    remove_column :tickets, :surgeon_street
    remove_column :tickets, :surgeon_city
    remove_column :tickets, :surgeon_province
    remove_column :tickets, :distance
  end
end
