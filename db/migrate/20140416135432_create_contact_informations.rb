class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.belongs_to :user, index: true
      t.text :address
      t.string :phone_number
      t.string :emergency_name
      t.string :emergency_number
      t.string :emergency_relation

      t.timestamps
    end
  end
end
