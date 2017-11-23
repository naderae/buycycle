class Addproperratingcolumn < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rating, :integer, array: true, default: []
  end
end
