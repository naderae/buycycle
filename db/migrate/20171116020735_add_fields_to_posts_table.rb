class AddFieldsToPostsTable < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.string :post_type
      t.string :service_type
    end
  end
end
