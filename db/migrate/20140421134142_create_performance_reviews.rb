class CreatePerformanceReviews < ActiveRecord::Migration
  def change
    create_table :performance_reviews do |t|
      t.date :date
      t.belongs_to :user

      t.timestamps
    end
    create_table :topics do |t|
      t.string :category
      t.string :rating
      t.text :note
      t.belongs_to :performance_review

      t.timestamps
    end
  end
end
