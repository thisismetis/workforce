class AddBelongsToOfficeBranchToUser < ActiveRecord::Migration
  def change
    add_reference(:users, :office_branch, index: true)
  end
end
