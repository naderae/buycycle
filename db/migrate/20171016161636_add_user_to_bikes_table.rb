class AddUserToBikesTable < ActiveRecord::Migration[5.1]
  def change
    change_table :bikes do |t|
      t.belongs_to :user
    end
  end
end
