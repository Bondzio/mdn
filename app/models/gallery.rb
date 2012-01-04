class Gallery < ActiveRecord::Base
  attr_accessible :gallery_name, :description, :assets_attributes 
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
  def find_featured_image
    assets.featured
  end
  
  def find_only_featured
    assets.only_featured
  end
  
end
