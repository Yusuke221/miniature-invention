class AddTenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ten, :smallint
  end
end
