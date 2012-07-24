class Audio < ActiveRecord::Base

  belongs_to :radio_program
  
  has_attached_file :attachment
  
  validates_attachment_presence :audios
  
end
