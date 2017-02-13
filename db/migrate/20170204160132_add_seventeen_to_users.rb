class AddSeventeenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :seventeen, :smallint
  end
end
