class AddCoverPhotoToCover < ActiveRecord::Migration
  def change
    add_column :covers, :cover_photo, :string
  end
end
