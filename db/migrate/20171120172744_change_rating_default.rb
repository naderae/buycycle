class ChangeRatingDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :rating, from: 0, to: []
  end
end
