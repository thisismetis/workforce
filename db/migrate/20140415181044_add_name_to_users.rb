class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, limit: 50, null: false
    add_index :users, :name
  end
end
