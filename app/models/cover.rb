class Cover < ActiveRecord::Base
  mount_uploader :cover_photo, CoverPhotoUploader
end
