class CreateJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.date :date
      t.string :job_title
      t.integer :user_id
    end
  end
end
