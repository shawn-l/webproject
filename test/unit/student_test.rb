require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create a student" do
    student = Student.new(:id => '2009051712',
                          :password => '123456',
                          :password_confirmation => '123456'
                         )
    assert_equal(true,student.save)
    
  end
end
