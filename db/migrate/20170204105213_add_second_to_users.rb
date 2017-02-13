class AddSecondToUsers < ActiveRecord::Migration
  def change
    add_column :users, :second, :smallint
  end
end
