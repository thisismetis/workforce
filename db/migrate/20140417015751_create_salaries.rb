class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.decimal :salary
      t.date :date
      t.text :description
      t.belongs_to :user

      t.timestamps
    end
  end
end
