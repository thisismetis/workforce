class CreateOfficeBranches < ActiveRecord::Migration
  def change
    create_table :office_branches do |t|
      t.string :location, null: false
      t.timestamps
    end
  end
end
