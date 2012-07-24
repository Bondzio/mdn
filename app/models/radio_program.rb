class RadioProgram < ActiveRecord::Base
  #The following provides access for Paperclip file attachment gem
  attr_accessible :title, :description, :audios_attributes, :featured, :speaker, :date, :displayed
  has_many :audios, :dependent => :destroy
  accepts_nested_attributes_for :audios, :allow_destroy => true
  

  
  def self.featured
    where( :featured => true )
  end
end
