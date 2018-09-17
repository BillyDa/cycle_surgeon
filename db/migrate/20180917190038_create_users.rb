class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :email
      t.string :password
      t.string :password_confirmation
      t.boolean :surgeon, :default => false 
      t.timestamps
    end
  end
end
