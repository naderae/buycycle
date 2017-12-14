class Addrecipeintandsendertomessagemodel < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :user_id, :sender_id
    add_column :messages, :recipient_id, :integer
  end
end
