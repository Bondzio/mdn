class Resource < ActiveRecord::Base
  attr_accessible :description, :subtitle, :title, :document, :image, :video
  
  mount_uploader :document, DocumentUploader
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
end
