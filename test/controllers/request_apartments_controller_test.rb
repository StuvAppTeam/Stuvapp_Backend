require 'test_helper'

class RequestApartmentsControllerTest < ActionController::TestCase
  setup do
    @request_apartment = request_apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_apartment" do
    assert_difference('RequestApartment.count') do
      post :create, request_apartment: { city: @request_apartment.city, description: @request_apartment.description, furnished: @request_apartment.furnished, phase: @request_apartment.phase, size: @request_apartment.size, title: @request_apartment.title, totalPrice: @request_apartment.totalPrice, type: @request_apartment.type, user_id: @request_apartment.user_id, zipcode: @request_apartment.zipcode }
    end

    assert_redirected_to request_apartment_path(assigns(:request_apartment))
  end

  test "should show request_apartment" do
    get :show, id: @request_apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_apartment
    assert_response :success
  end

  test "should update request_apartment" do
    patch :update, id: @request_apartment, request_apartment: { city: @request_apartment.city, description: @request_apartment.description, furnished: @request_apartment.furnished, phase: @request_apartment.phase, size: @request_apartment.size, title: @request_apartment.title, totalPrice: @request_apartment.totalPrice, type: @request_apartment.type, user_id: @request_apartment.user_id, zipcode: @request_apartment.zipcode }
    assert_redirected_to request_apartment_path(assigns(:request_apartment))
  end

  test "should destroy request_apartment" do
    assert_difference('RequestApartment.count', -1) do
      delete :destroy, id: @request_apartment
    end

    assert_redirected_to request_apartments_path
  end
end
