require 'test_helper'

class ThesisTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create thesis" do
    thesis = Thesis.new(:item => 1,
                        :title => "text",
                        :major => 'emjor',
                        :summary => "just a test",
                        :content => "test",
                        :student => students(:one),
                        :teacher => teachers(:one)
                       )
                       
    assert_equal('MyString',thesis.teacher.tchId)
    assert_equal('MyString',thesis.student.stuId)
    assert_equal('emjor',thesis.major)
   end 
end
