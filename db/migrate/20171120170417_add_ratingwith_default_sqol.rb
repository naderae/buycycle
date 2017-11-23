class AddRatingwithDefaultSqol < ActiveRecord::Migration[5.1]

  def up
    execute <<-SQL
      alter table users
        add column rating integer[] not null default '{}';
    SQL
  end
end
