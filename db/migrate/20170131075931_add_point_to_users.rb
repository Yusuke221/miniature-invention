class AddPointToUsers < ActiveRecord::Migration
  def change
    add_column :users, :point, :smallint
  end
end
