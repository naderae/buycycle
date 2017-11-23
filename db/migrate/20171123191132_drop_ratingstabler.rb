class DropRatingstabler < ActiveRecord::Migration[5.1]
  def change
        drop_table :ratings
  end
end
