class DropMessagesModels < ActiveRecord::Migration[5.1]
  def change
      drop_table :messages_models
  end
end
