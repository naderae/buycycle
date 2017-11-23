class ChangeUserTable < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :role
      t.string :service
    end
  end
end
