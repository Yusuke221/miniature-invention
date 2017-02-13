class AddThirdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :third, :smallint
  end
end
