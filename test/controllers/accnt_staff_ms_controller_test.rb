require 'test_helper'

class AccntStaffMsControllerTest < ActionController::TestCase
  setup do
    @accnt_staff_m = accnt_staff_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accnt_staff_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accnt_staff_m" do
    assert_difference('AccntStaffM.count') do
      post :create, accnt_staff_m: {  }
    end

    assert_redirected_to accnt_staff_m_path(assigns(:accnt_staff_m))
  end

  test "should show accnt_staff_m" do
    get :show, id: @accnt_staff_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accnt_staff_m
    assert_response :success
  end

  test "should update accnt_staff_m" do
    patch :update, id: @accnt_staff_m, accnt_staff_m: {  }
    assert_redirected_to accnt_staff_m_path(assigns(:accnt_staff_m))
  end

  test "should destroy accnt_staff_m" do
    assert_difference('AccntStaffM.count', -1) do
      delete :destroy, id: @accnt_staff_m
    end

    assert_redirected_to accnt_staff_ms_path
  end
end
