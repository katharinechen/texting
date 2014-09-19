class Contact < ActiveRecord::Base

  belongs_to :user 
  has_many :messages 

  validates :user_id, presence: true 
  validates :full_name, presence: true 
  validates :phone_number, presence: true 
  validates :address, presence: true 

end

