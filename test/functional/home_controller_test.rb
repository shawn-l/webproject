require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get guest" do
    get :guest
    assert_response :success
  end

  test "should get teacher" do
    get :teacher
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

end
