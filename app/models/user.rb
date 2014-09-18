class User < ActiveRecord::Base

	has_many :messages
  has_many :contacts 

  validates :email, presence: true 
  validates :phone, presence: true 
  validates :password, presence: true 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
	