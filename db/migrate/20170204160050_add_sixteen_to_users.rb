class AddSixteenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sixteen, :smallint
  end
end
