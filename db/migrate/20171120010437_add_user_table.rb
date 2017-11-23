class AddUserTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :service
      t.integer :rating, array: true, default: []
      t.timestamps
    end
  end
end
