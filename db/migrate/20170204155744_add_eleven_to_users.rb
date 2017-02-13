class AddElevenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eleven, :smallint
  end
end
