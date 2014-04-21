class CreateJobTitleUsers < ActiveRecord::Migration
  def change
    create_table :job_title_users do |t|
      t.integer :user_id
      t.integer :job_title_id
      t.timestamps
    end
  end
end
