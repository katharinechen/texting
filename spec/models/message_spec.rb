require 'rails_helper'

describe "Message" do

	it { should validate_presence_of :full_name }
	it { should validate_presence_of :phone_number }
	it { should validate_presence_of :address }
	it { should validate_presence_of :user_id }

	it { should belong_to :user }
	it { should belong_to :contact }
end  