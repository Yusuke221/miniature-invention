class AddEighthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eighth, :samllint
  end
end
