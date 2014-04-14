class ChangePositionToAdminOnUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    remove_column :users, :position, :string
  end
end
