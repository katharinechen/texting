class Message < ActiveRecord::Base

  before_create :send_message

  def initialize(attributes)
    @to = attributes['to']
    @from = attributes['from']
    @body = attributes['body']
    @status = attributes['status']
  end

private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => '',
      :user => '',
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
      ).execute
  end

end
