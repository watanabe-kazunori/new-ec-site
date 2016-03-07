require 'test_helper'

class AccntMsControllerTest < ActionController::TestCase
  setup do
    @accnt_m = accnt_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accnt_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accnt_m" do
    assert_difference('AccntM.count') do
      post :create, accnt_m: {  }
    end

    assert_redirected_to accnt_m_path(assigns(:accnt_m))
  end

  test "should show accnt_m" do
    get :show, id: @accnt_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accnt_m
    assert_response :success
  end

  test "should update accnt_m" do
    patch :update, id: @accnt_m, accnt_m: {  }
    assert_redirected_to accnt_m_path(assigns(:accnt_m))
  end

  test "should destroy accnt_m" do
    assert_difference('AccntM.count', -1) do
      delete :destroy, id: @accnt_m
    end

    assert_redirected_to accnt_ms_path
  end
end
