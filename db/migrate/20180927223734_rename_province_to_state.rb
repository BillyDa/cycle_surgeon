class RenameProvinceToState < ActiveRecord::Migration[5.2]
  def up
    rename_column :tickets, :province, :state
    rename_column :users, :province, :state
  end
  def down
    rename_column :tickets, :province, :state
    rename_column :users, :province, :state
  end
end
