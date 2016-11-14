class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  acts_as_list


end
