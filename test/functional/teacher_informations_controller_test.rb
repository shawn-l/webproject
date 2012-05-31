require 'test_helper'

class TeacherInformationsControllerTest < ActionController::TestCase
  setup do
    @teacher_information = teacher_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_information" do
    assert_difference('TeacherInformation.count') do
      post :create, teacher_information: @teacher_information.attributes
    end

    assert_redirected_to teacher_information_path(assigns(:teacher_information))
  end

  test "should show teacher_information" do
    get :show, id: @teacher_information.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_information.to_param
    assert_response :success
  end

  test "should update teacher_information" do
    put :update, id: @teacher_information.to_param, teacher_information: @teacher_information.attributes
    assert_redirected_to teacher_information_path(assigns(:teacher_information))
  end

  test "should destroy teacher_information" do
    assert_difference('TeacherInformation.count', -1) do
      delete :destroy, id: @teacher_information.to_param
    end

    assert_redirected_to teacher_informations_path
  end
end
