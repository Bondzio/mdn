class Request < ActiveRecord::Base
  validates :first_name, :last_name, :email, :phone, :church, :address1, :city, :state, :zip, :size, :presence => true

end
