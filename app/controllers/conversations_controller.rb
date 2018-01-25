class ConversationsController < ApplicationController


def index
 @users = User.all
 @conversations = Conversation.all

# @conversations_sorted = @conversations.sort{|a, b| a.messages.last.created_at <=> b.messages.last.created_at}



 @convos = @conversations.where(recipient_id: current_user.id).or(@conversations.where(sender_id: current_user.id))
end

#  @unread = []
#  @convos.each do |convo|
#    if convo.messages[convo.messages.count - 1].read == false
#      @unread.push(convo.messages.last.sender)
#    end
#    return @unread
#  end
# end




 # @message.where(recipient_id: current_user.id).last


 # @recipient_conversations = Conversation.where(recipient_id: current_user.id)


 # @unread = []
 # @recipient_conversations.each do |conversation|
 #   @unread << conversation.messages.where(read: false).where.not(id: nil).where.not(user: current_user)
 # end
 #
 # @unread.flatten!

 # @unread = @conversation.messages.where(read: false).where.not(id: nil).where.not(user: current_user)
 #




def create
 if Conversation.between(params[:sender_id],params[:recipient_id])
   .present?
    @conversation = Conversation.between(params[:sender_id],
     params[:recipient_id]).first
 else
  @conversation = Conversation.create!(conversation_params)
 end

 redirect_to conversation_messages_path(@conversation)

end


private
 def conversation_params
  params.permit(:sender_id, :recipient_id)
 end
end
