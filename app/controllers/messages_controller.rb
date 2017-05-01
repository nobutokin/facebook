class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
    getMessages
  end

  def index
    @messages = @conversation.messages

    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end

    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end

    if @messages.last
      if @messages.last.user_id != current_user.id
       @messages.last.read = true
      end
    end

    @message = @conversation.messages.build
  end

  def create
    @message = @conversation.messages.build(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    else
      render 'index'
    end
  end

  private
    def message_params
      params.require(:message).permit(:body, :user_id)
    end

    def getMessages
      @messages = @conversation.messages

      if @messages.length > 10
        @over_ten = true
        @messages = @messages[-10..-1]
      end

      if params[:m]
        @over_ten = false
        @messages = @conversation.messages
      end

      if @messages.last
        if @messages.last.user_id != current_user.id
         @messages.last.read = true
        end
      end
    end
end
