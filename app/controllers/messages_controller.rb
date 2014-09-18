class MessagesController < ApplicationController

  def index
    @messages = Message.all 
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your message has been saved."
      redirect_to messages_path
    else
      flash[:alert] = "Your message failed to send."
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
