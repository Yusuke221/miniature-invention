class RemoveFourthFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fourth, :string
  end
end
