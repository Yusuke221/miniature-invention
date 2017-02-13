class AddSeventhToUsers < ActiveRecord::Migration
  def change
    add_column :users, :seventh, :smallint
  end
end
