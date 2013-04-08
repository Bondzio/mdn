class Announcement < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  attr_accessible :date, :description, :image, :title, :image
  
  mount_uploader :image, ImageUploader
  
end
