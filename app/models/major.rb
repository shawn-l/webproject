class Major < ActiveRecord::Base
  has_many :student_informations
  has_many :theses
end
