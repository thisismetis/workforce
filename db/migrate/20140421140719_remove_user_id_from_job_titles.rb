class RemoveUserIdFromJobTitles < ActiveRecord::Migration
  def change
    remove_column :job_titles, :user_id
  end
end
