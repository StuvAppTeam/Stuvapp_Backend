require 'test_helper'

class RequestBlackboardsControllerTest < ActionController::TestCase
  setup do
    @request_blackboard = request_blackboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_blackboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_blackboard" do
    assert_difference('RequestBlackboard.count') do
      post :create, request_blackboard: { category_id: @request_blackboard.category_id, condition: @request_blackboard.condition, description: @request_blackboard.description, title: @request_blackboard.title, totalPrice: @request_blackboard.totalPrice, user_id: @request_blackboard.user_id }
    end

    assert_redirected_to request_blackboard_path(assigns(:request_blackboard))
  end

  test "should show request_blackboard" do
    get :show, id: @request_blackboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_blackboard
    assert_response :success
  end

  test "should update request_blackboard" do
    patch :update, id: @request_blackboard, request_blackboard: { category_id: @request_blackboard.category_id, condition: @request_blackboard.condition, description: @request_blackboard.description, title: @request_blackboard.title, totalPrice: @request_blackboard.totalPrice, user_id: @request_blackboard.user_id }
    assert_redirected_to request_blackboard_path(assigns(:request_blackboard))
  end

  test "should destroy request_blackboard" do
    assert_difference('RequestBlackboard.count', -1) do
      delete :destroy, id: @request_blackboard
    end

    assert_redirected_to request_blackboards_path
  end
end
