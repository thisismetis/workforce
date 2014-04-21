class AddJobTitleIdToJobTitles < ActiveRecord::Migration
  def change
    add_column :job_titles, :job_title_id, :integer
  end
end
