class AddingStreetAndStuff < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
    add_column :users, :country, :string
  end
  def down
    remove_column :users, :street
    remove_column :users, :city
    remove_column :users, :province
    remove_column :users, :country
  end
end
