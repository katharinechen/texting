require 'rails_helper'

describe Contact do 

  it { should belong_to :user }
  it { should have_many :messages }

  it { should validate_presence_of :full_name }
  it { should validate_presence_of :phone_number }
  it { should validate_presence_of :address }
  it { should validate_presence_of :user_id }

end 