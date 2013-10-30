class Book < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  attr_accessible :author, :description, :image, :subtitle, :title, :rank, :url, :featured, :dsc_price, :retail_price
  
  mount_uploader :image, ImageUploader
end
