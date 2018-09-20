class AddColumnToTicketsTable < ActiveRecord::Migration[5.2]
  def up
    add_column :tickets, :surgeon_id, :integer
  end
  def down
    remove_column :tickets, :surgeon_id
  end 
end
