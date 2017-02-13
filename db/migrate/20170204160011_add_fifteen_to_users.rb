class AddFifteenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fifteen, :smallint
  end
end
