class CreateMessagesModels < ActiveRecord::Migration[5.1]
  def change
    create_table :messages_models do |t|

      t.timestamps
    end
  end
end
