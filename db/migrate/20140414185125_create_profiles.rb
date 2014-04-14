class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.text :about
      t.string :picture_url, null: :false
      t.string :name, null: :false
      t.date :start_date
      t.date :birthday

      t.timestamps
    end
  end
end
