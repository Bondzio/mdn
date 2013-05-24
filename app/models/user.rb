class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :first_name, :last_name, :username, :login
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  
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
  
  #Because we want to change the behavior of the login action, we have to overwrite the find_for_database_authentication method. 
  #The methods’ stack works like this : find_for_database_authentication calls find_for_authentication which 
  #calls find_first_by_auth_conditions.
  
  def self.find_first_by_auth_conditions(warden_conditions)
        conditions = warden_conditions.dup
        if login = conditions.delete(:login)
          where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
        else
          where(conditions).first
        end
  end
  
  
  
end
