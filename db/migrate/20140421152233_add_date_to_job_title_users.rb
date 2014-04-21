class AddDateToJobTitleUsers < ActiveRecord::Migration
  def change
    add_column :job_title_users, :date, :date
  end
end
