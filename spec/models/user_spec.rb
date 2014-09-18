require 'rails_helper'

describe User do  
	it { should have_many :contacts }
	it { should have_many :messages }

	it { should validate_presence_of :email }
	it { should validate_presence_of :phone }
	it { should validate_presence_of :password }
end 

