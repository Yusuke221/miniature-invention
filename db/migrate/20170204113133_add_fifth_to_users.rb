class AddFifthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fifth, :smallint
  end
end
