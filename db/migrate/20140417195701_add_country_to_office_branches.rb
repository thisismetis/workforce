class AddCountryToOfficeBranches < ActiveRecord::Migration
  def change
    add_column :office_branches, :country, :string
  end
end
