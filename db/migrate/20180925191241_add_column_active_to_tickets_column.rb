class AddColumnActiveToTicketsColumn < ActiveRecord::Migration[5.2]
  def up
    add_column :tickets, :active, :boolean, default: true
  end

  def down

    remove_column :tickets, :active, :boolean, default: true
  end
end
