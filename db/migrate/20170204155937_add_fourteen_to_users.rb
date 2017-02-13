class AddFourteenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fourteen, :smallint
  end
end
