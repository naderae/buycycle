class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :body, :conversation_id, :user_id



  # method to show the created_at in a sexy way
  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
