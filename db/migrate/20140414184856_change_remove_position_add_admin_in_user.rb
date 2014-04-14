class ChangeRemovePositionAddAdminInUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    remove_column :users, :position, :string
  end
end
