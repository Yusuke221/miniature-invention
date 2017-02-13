class AddThirteenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :thirteen, :smallint
  end
end
