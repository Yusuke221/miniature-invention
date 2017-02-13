class RemovePointFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :point, :string
  end
end
