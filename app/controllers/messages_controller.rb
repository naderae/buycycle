
class MessagesController < ApplicationController

  before_action do
   @conversation = Conversation.find(params[:conversation_id])
  end


def index

  if @conversation.sender === current_user
    @user = @conversation.recipient
  else
    @user = @conversation.sender
  end

  


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
  if @messages.last.sender_id != current_user.id
   @messages.last.read = true;
   @messages.last.save
  end
 end
 # @unread = @conversation.messages.where(read: false).where.not(id: nil).where.not(user: current_user)
 @message = @conversation.messages.new
end



def new
 @message = @conversation.messages.new
end



def create
 @message = @conversation.messages.new(message_params)
 if @message.save
  redirect_to conversation_messages_path(@conversation)
 end
end



private
 def message_params
  params.require(:message).permit(:body, :sender_id, :recipient_id)
 end
end
