class Prayer < ActiveRecord::Base
  validates_presence_of :first_name, :city, :state, :request
  
  # https://github.com/intridea/profanity_filter/blob/master/README.rdoc
  profanity_filter :request, :first_name, :city
  
   self.per_page = 15
end
