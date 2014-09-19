require 'rails_helper'

describe Message do

  it { should belong_to :user }
  it { should belong_to :contact }

	it { should validate_presence_of :contact_id }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :body }
  it { should validate_presence_of :status }

  it "doesn't save the message if twilio gives an error", :vcr => true do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
    expect(message.save).to be false 
  end

end  