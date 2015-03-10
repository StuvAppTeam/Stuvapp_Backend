require 'test_helper'

class OfferBlackboardsControllerTest < ActionController::TestCase
  setup do
    @offer_blackboard = offer_blackboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_blackboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_blackboard" do
    assert_difference('OfferBlackboard.count') do
      post :create, offer_blackboard: { category_id: @offer_blackboard.category_id, city: @offer_blackboard.city, condition: @offer_blackboard.condition, description: @offer_blackboard.description, image_id: @offer_blackboard.image_id, street: @offer_blackboard.street, title: @offer_blackboard.title, totalPrice: @offer_blackboard.totalPrice, user_id: @offer_blackboard.user_id, zipcode: @offer_blackboard.zipcode }
    end

    assert_redirected_to offer_blackboard_path(assigns(:offer_blackboard))
  end

  test "should show offer_blackboard" do
    get :show, id: @offer_blackboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer_blackboard
    assert_response :success
  end

  test "should update offer_blackboard" do
    patch :update, id: @offer_blackboard, offer_blackboard: { category_id: @offer_blackboard.category_id, city: @offer_blackboard.city, condition: @offer_blackboard.condition, description: @offer_blackboard.description, image_id: @offer_blackboard.image_id, street: @offer_blackboard.street, title: @offer_blackboard.title, totalPrice: @offer_blackboard.totalPrice, user_id: @offer_blackboard.user_id, zipcode: @offer_blackboard.zipcode }
    assert_redirected_to offer_blackboard_path(assigns(:offer_blackboard))
  end

  test "should destroy offer_blackboard" do
    assert_difference('OfferBlackboard.count', -1) do
      delete :destroy, id: @offer_blackboard
    end

    assert_redirected_to offer_blackboards_path
  end
end
