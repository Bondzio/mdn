class Resource < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  attr_accessible :description, :subtitle, :title, :document, :image, :video, :audio
  
  mount_uploader :document, DocumentUploader
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  mount_uploader :audio, AudioUploader
end
