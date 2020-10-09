class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def confirm
    if request.post?
      @message = Message.new(message_params)
      render :new if @message.invalid?
    else
      redirect_to new_messages_path
    end
  end

  def back
    @message = Message.new(message_params)
    render :new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.received_email(@message).deliver
      redirect_to complete_messages_path
    else
      render :new
    end
  end

  def complete
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
