class CreateAccepteds < ActiveRecord::Migration[5.2]
  def change
    create_table :accepteds do |t|

      t.timestamps
    end
  end
end
