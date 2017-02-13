class RemoveNinthFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ninth, :string
  end
end
