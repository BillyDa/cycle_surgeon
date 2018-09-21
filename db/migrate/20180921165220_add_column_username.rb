class AddColumnUsername < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :username, :string
  end
  def down
    remove_colum :users, :username
  end
end
