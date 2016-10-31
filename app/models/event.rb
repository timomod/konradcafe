class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
