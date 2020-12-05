class User < ApplicationRecord
  has_many :agents

	validates :identitycard, length: {is: 12, message: "Please enter a valid ic number "}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable , 
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable,:registerable

 attr_accessor :login

 def login
 	@login || identitycard || email
 end


 def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(identitycard) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    where(conditions).first
  end
end


end
