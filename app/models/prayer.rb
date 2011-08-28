class Prayer < ActiveRecord::Base
  validates_presence_of :first_name, :city, :state, :request
end
