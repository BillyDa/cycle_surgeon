class AddColumnGeoToTicketsTable < ActiveRecord::Migration[5.2]
  def up
    add_column :tickets, :user_latitude, :float
    add_column :tickets, :user_longitude, :float
    add_column :tickets, :user_address, :text
    add_column :tickets, :user_street, :string
    add_column :tickets, :user_city, :string
    add_column :tickets, :user_province, :string
    add_column :tickets, :surgeon_latitude, :float
    add_column :tickets, :surgeon_longitude, :float
    add_column :tickets, :surgeon_address, :text
    add_column :tickets, :surgeon_street, :string
    add_column :tickets, :surgeon_city, :string
    add_column :tickets, :surgeon_province, :string
  end

  def down
    remove_column :tickets, :user_lon
    remove_column :tickets, :user_lat
    remove_column :tickets, :distance
    remove_column :tickets, :cyclist_location
    remove_column :tickets, :surgeon_location
    remove_column :tickets, :surgeon_lat
    remove_column :ticekts, :surgeon_lon

    remove_column :tickets, :user_latitude
    remove_column :tickets, :user_longitude
    remove_column :tickets, :user_address
    remove_column :tickets, :user_street
    remove_column :tickets, :user_city
    remove_column :tickets, :user_province
    remove_column :tickets, :surgeon_latitude
    remove_column :tickets, :surgeon_longitude
    remove_column :tickets, :surgeon_address
    remove_column :tickets, :surgeon_street
    remove_column :tickets, :surgeon_city
    remove_column :tickets, :surgeon_province
  end
end
