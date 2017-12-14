class Message < ApplicationRecord
  belongs_to :conversation

  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'



  validates_presence_of :body, :conversation_id, :sender_id, :recipient_id



  # method to show the created_at in a sexy way
  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
