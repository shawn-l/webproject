require 'test_helper'

class ThesisTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create thesis" do
    thesis = Thesis.new(:item => 1,
                        :title => "text",
                        :summary => "just a test",
                        :content => "test"
                       )
    thesis.teacher = teachers(:one)
    thesis.student = students(:one)
    assert_equal('MyString',thesis.teacher.tchId)
    assert_equal('MyString',thesis.student.name)
   end 
end
