class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :brand
      t.string :frame_size
      t.string :frame_material
      t.string :gear
      t.integer :price
      t.timestamps
    end
  end
end
