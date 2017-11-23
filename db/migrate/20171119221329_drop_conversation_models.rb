class DropConversationModels < ActiveRecord::Migration[5.1]
  def change
    drop_table :conversation_models
  end
end
