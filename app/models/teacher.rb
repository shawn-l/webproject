#encoding: utf-8
class Teacher < ActiveRecord::Base
  has_many :theses, :dependent => :destroy
  has_one :teacher_information, :dependent => :destroy
  accepts_nested_attributes_for :teacher_information

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :tchId, :email, :password, :password_confirmation, :remember_me
  validates :tchId, :presence =>true, :uniqueness => true, :numericality =>true
  attr_accessor :login
  attr_accessible :login
  validates :password, :confirmation => true
  attr_protected :state

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(tchId) = :value" , {:value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
end
