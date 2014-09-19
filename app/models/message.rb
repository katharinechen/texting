class Message < ActiveRecord::Base

  belongs_to :user 
  belongs_to :contact 

  # validates :contact_id, presence: true 
  # validates :user_id, presence: true 
  # validates :body, presence: true 
  # validates :status, presence: true 

  before_create :send_message

private

  def send_message
    begin 
      response = RestClient::Request.new(
        :method => :post,
        :url => 'https://api.twilio.com/2010-04-01/Accounts/AC57ab5b95dcf85a7dbd70f84a82417deb/Messages.json',
        :user => ENV['TWILIO_ACCOUNT_SID'],
        :password => ENV['TWILIO_AUTH_TOKEN'],
        :payload => { :Body => body,
                      :To => to,
                      :From => from }
        ).execute
    rescue 
      false
    end
  end

end
