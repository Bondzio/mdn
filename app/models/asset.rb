class Asset < ActiveRecord::Base
  belongs_to :gallery
  
  has_attached_file :image,
    :styles => {
      :thumb => '150x150#',
      :medium => '300x300>',
      :large => '600x600>'
    }
    
  def self.featured
    where( :featured => true ).limit(1)
  end
  
  scope :only_featured, where(:featured => true)
  
end
