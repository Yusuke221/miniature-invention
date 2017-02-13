class RemoveFifthFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fifth, :string
  end
end
