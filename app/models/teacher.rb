class Teacher < ActiveRecord::Base
  include CreateHashedPassword
  validates :tchId, :presence => true, :uniqueness => true

  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password
  validate :password_must_be_present
 
  has_many :theses
end
