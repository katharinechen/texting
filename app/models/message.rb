class Message < ActiveRecord::Base

  belongs_to :user 
  belongs_to :contact 

  validates :contact_id, presence: true 
  validates :user_id, presence: true 
  validates :body, presence: true 
  validates :status, presence: true 

end
