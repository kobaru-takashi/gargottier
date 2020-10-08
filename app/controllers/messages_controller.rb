class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def confirm
    if request.post?
      @message = Message.new(message_params)
      render :index if @message.invalid?
    else
      redirect_to message_path
    end

    # @message = Message.new(message_params)
    # if @message.valid?
    #   render :action => 'confirm'
    # else
    #   render :action => 'index'
    # end
  end
  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.received_email(@message).deliver
      redirect_to complete_messages_path
    else
      render :index
    end
  end

  def complete
    # @message = Message.new(message_params)
    # if params[:back]
    #   render :action => 'index'
    # else
    #   MessageMailer.received_email(@message).deliver
    #   render :action => 'complete'
    # end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
