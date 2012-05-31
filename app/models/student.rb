class Student < ActiveRecord::Base
  has_one :thesis
  has_one :student_information, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :stuId, :email, :password, :password_confirmation, :remember_me
  validates :stuId, :presence => true, :uniqueness => true
  attr_accessor :login
  attr_accessible :login
  
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(stuId) = :value OR lower(email) = :value", {:value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

end
