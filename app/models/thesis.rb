class Thesis < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
  belongs_to :major
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a[:content].blank?}, :allow_destroy => true
  validates :title, :presence => true
  validates :summary, :presence => true
end
