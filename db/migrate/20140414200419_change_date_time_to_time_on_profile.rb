class ChangeDateTimeToTimeOnProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :start_date, :datetime
    remove_column :profiles, :birthday, :datetime
    add_column :profiles, :start_date, :date
    add_column :profiles, :birthday, :date
  end
end
