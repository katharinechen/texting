require 'rails_helper'

describe Message do

  it { should belong_to :user }
  it { should belong_to :contact }

	it { should validate_presence_of :contact_id }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :body }
  it { should validate_presence_of :status }

end  