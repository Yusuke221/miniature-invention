class AddFourthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fourth, :smallint
  end
end
