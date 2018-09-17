class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|

      t.belongs_to :user
      # t.belongs_to because each ticket must be linked to a cyclist.
      t.integer :repair
      # Types of issues are in an integer form
      t.text :description
      # Description of issue in the event the problem is not listed.
      t.integer :cyclist_location
      # For geo-location, to calcuate distance between the users.
      t.integer :surgeon_location
      # For geo-location, to calcuate distance between the users.
      t.integer :distance
      t.timestamps
    end
  end
end
