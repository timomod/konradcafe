 require 'date'

class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  acts_as_list

  scope :is_cover, -> { where(cover: true) }
  scope :displayed_now, ->(date) {where("start_display <= ? AND end_display >= ?", date, date)}


end
