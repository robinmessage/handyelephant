require 'test_helper'

class StaffmembersControllerTest < ActionController::TestCase
  setup do
    @staffmember = staffmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staffmember" do
    assert_difference('Staffmember.count') do
      post :create, staffmember: @staffmember.attributes
    end

    assert_redirected_to staffmember_path(assigns(:staffmember))
  end

  test "should show staffmember" do
    get :show, id: @staffmember.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffmember.to_param
    assert_response :success
  end

  test "should update staffmember" do
    put :update, id: @staffmember.to_param, staffmember: @staffmember.attributes
    assert_redirected_to staffmember_path(assigns(:staffmember))
  end

  test "should destroy staffmember" do
    assert_difference('Staffmember.count', -1) do
      delete :destroy, id: @staffmember.to_param
    end

    assert_redirected_to staffmembers_path
  end
end
