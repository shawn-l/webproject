require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create a student" do
    student = Student.new(:stuId => '2009051234',
                          :password => '123456',
                          :password_confirmation => '123456',
                         )
    assert_equal(true,student.save)
  end
  
  test "student id must not be null" do
    student = Student.new(:password => '123',
                          :password_confirmation => '123',
                          )
    assert student.invalid?
    assert student.errors[:stuId].any?
    assert_equal(false,student.save)
  end
  
  test "student password_confirmation must be equal password" do
    student = Student.new(:stuId => '2009051234',
                         :password => '123',
                         :password_confirmation => '1234',
                         )
    assert student.invalid?
    assert student.errors[:password].any?
    assert_equal(false,student.save)
  end 

  test "student infomation must can update" do
    student = Student.new(:stuId => '2009051234',
                         :password => '123',
                         :password => '123',
                         )
    assert_equal(true,student.save)
    student_db = Student.find_by_stuId('2009051234')
    assert student_db.valid?
    student_db.name = "Tom"
    assert_equal(true,student_db.save)
  end

  test "student has a thesis" do
    student = students(:one)
    student.thesis = theses(:one)
    assert_equal(1,student.thesis.item)
  end
end
