class RemovePictureUrlFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :picture_url
  end
end
