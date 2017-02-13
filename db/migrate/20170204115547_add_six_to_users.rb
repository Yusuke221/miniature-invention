class AddSixToUsers < ActiveRecord::Migration
  def change
    add_column :users, :six, :smallint
  end
end
