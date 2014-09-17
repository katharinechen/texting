class Message < ActiveRecord::Base

  before_filter :authenticate_user!
  before_create :send_message

  def initialize(attributes)
    @to = attributes['to']
    @from = attributes['from']
    @body = attributes['body']
    @status = attributes['status']
  end

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new()
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your message has been saved."
      redirect_to contacts_path
    else
      flash[:alert] = "Your message failed to send."
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC57ab5b95dcf85a7dbd70f84a82417deb/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
      ).execute
  end

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end

end
