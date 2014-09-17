class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.integer :phone_number
      t.string :address
      t.timestamps
    end

    create_table :messages do |t|
      t.belongs_to :contact
      t.belongs_to :user
      t.text :body
      t.string :status
      t.timestamps
    end
  end
end
