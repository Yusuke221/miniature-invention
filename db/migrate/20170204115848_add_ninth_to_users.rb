class AddNinthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ninth, :smallint
  end
end
