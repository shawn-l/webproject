#encoding: utf-8
require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      :tchId => "123",
      :password => "private",
      :password_confirmation => "private",
    }
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, :teacher => @input_attributes
    end
    assert_redirected_to teacher_path(assigns(:teacher))

    mail = ActionMailer::Base.deliveries.first
    assert_equal ["shawn413472212@gmail.com"], mail.to
    assert_equal 'admin@webproject.com', mail[:from].value
    assert_equal '用户等待验证', mail.subject
  end

  test "should show teacher" do
    get :show, id: @teacher.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher.to_param
    assert_response :success
  end

  test "should update teacher" do
    put :update, :id => @teacher.to_param, :teacher => @input_attributes
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher.to_param
    end

    assert_redirected_to teachers_path
  end
end
