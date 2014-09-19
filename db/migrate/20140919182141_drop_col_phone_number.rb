class DropColPhoneNumber < ActiveRecord::Migration
  def change

    remove_column :contacts, :phone_number
    add_column :contacts, :phone_number, :string
  end
end
