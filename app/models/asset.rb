class Asset < ActiveRecord::Base
  belongs_to :gallery
  
  has_attached_file :image,
    :styles => {
      :thumb => '150x150#',
      :medium => '300x300>',
      :large => '800x600>'},
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
    
  def self.featured
    where( :featured => true ).limit(1)
  end
  
  scope :only_featured, where(:featured => true)
  
end
