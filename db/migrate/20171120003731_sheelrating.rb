class Sheelrating < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :rating
  end
end
