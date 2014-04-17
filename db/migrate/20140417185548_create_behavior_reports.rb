class CreateBehaviorReports < ActiveRecord::Migration
  def change
    create_table :behavior_reports do |t|
      t.date :date
      t.text :description
      t.text :action_taken
      t.belongs_to :user

      t.timestamps
    end
  end
end
