class Book < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  attr_accessible :author, :description, :image, :subtitle, :title, :rank, :url
  
  mount_uploader :image, ImageUploader
end
