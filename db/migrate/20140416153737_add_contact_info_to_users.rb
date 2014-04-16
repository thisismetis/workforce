class AddContactInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :text
    add_column :users, :phone_number, :string
    add_column :users, :emergency_name, :string
    add_column :users, :emergency_number, :string
    add_column :users, :emergency_relation, :string
  end
end
