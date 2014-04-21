class RemoveDateFromJobTitle < ActiveRecord::Migration
  def change
    remove_column :job_titles, :date
    remove_column :job_titles, :job_title_id
  end
end
