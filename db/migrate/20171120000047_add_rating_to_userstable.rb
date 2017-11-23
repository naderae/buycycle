class AddRatingToUserstable < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.integer :rating
    end
  end
end
