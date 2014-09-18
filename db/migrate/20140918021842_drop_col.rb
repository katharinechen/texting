class DropCol < ActiveRecord::Migration
  def change

  	remove_column :users, :username 
  	add_column :contacts, :user_id, :integer 

  end
end
