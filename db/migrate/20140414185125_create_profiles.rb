class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.text :about
      t.string :picture_url
      t.string :name
      t.datetime :start_date
      t.datetime :birthday

      t.timestamps
    end
  end
end
