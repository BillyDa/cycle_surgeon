class UserAddress < ActiveRecord::Migration[5.2]
  def up
    add_column :tickets, :street, :string
    add_column :tickets, :city, :string
    add_column :tickets, :province, :string
    add_column :tickets, :country, :string
  end
  def down
    remove_column :tickets, :street
    remove_column :tickets, :city
    remove_column :tickets, :province
    remove_column :tickets, :country
  end
end
