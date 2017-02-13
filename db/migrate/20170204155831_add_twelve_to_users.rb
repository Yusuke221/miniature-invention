class AddTwelveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twelve, :smallint
  end
end
