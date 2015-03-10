require 'test_helper'

class OfferApartmentsControllerTest < ActionController::TestCase
  setup do
    @offer_apartment = offer_apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_apartment" do
    assert_difference('OfferApartment.count') do
      post :create, offer_apartment: { additionalCost: @offer_apartment.additionalCost, city: @offer_apartment.city, deposit: @offer_apartment.deposit, description: @offer_apartment.description, furnished: @offer_apartment.furnished, image_id: @offer_apartment.image_id, internet: @offer_apartment.internet, moveIn: @offer_apartment.moveIn, other: @offer_apartment.other, parking: @offer_apartment.parking, phase: @offer_apartment.phase, rent: @offer_apartment.rent, rooms: @offer_apartment.rooms, size: @offer_apartment.size, smoking: @offer_apartment.smoking, street: @offer_apartment.street, title: @offer_apartment.title, totalPrice: @offer_apartment.totalPrice, type: @offer_apartment.type, user_id: @offer_apartment.user_id, zipcode: @offer_apartment.zipcode }
    end

    assert_redirected_to offer_apartment_path(assigns(:offer_apartment))
  end

  test "should show offer_apartment" do
    get :show, id: @offer_apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer_apartment
    assert_response :success
  end

  test "should update offer_apartment" do
    patch :update, id: @offer_apartment, offer_apartment: { additionalCost: @offer_apartment.additionalCost, city: @offer_apartment.city, deposit: @offer_apartment.deposit, description: @offer_apartment.description, furnished: @offer_apartment.furnished, image_id: @offer_apartment.image_id, internet: @offer_apartment.internet, moveIn: @offer_apartment.moveIn, other: @offer_apartment.other, parking: @offer_apartment.parking, phase: @offer_apartment.phase, rent: @offer_apartment.rent, rooms: @offer_apartment.rooms, size: @offer_apartment.size, smoking: @offer_apartment.smoking, street: @offer_apartment.street, title: @offer_apartment.title, totalPrice: @offer_apartment.totalPrice, type: @offer_apartment.type, user_id: @offer_apartment.user_id, zipcode: @offer_apartment.zipcode }
    assert_redirected_to offer_apartment_path(assigns(:offer_apartment))
  end

  test "should destroy offer_apartment" do
    assert_difference('OfferApartment.count', -1) do
      delete :destroy, id: @offer_apartment
    end

    assert_redirected_to offer_apartments_path
  end
end
