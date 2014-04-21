class AddStateToOfficeBranch < ActiveRecord::Migration
  def change
    rename_column :office_branches, :location, :city
    add_column :office_branches, :state, :string
  end
end
