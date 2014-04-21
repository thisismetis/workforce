class ChangeJobTitleToName < ActiveRecord::Migration
  def change
    rename_column :job_titles, :job_title, :name
  end
end
