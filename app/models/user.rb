class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :first_name, :last_name
  
  ROLES = %w[admin moderator coach author banned]
  
  
  # Add the following code to the User model for getting 
  # and setting the list of roles a user belongs to. This will perform the 
  # necessary bitwise operations to translate an array of roles into the integer field.
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end
  
  #This method checks the user's role
  def is?(role)
    roles.include?(role.to_s)
  end
  
  
  
end
