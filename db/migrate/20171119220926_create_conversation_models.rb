class CreateConversationModels < ActiveRecord::Migration[5.1]
  def change
    create_table :conversation_models do |t|

      t.timestamps
    end
  end
end
