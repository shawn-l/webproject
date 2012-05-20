class Student < ActiveRecord::Base
  include CreateHashedPassword
  validates :stuId, :presence => true, :uniqueness => true
  
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password
  validate :password_must_be_present

  has_one :thesis
 
 
end
