require 'test_helper'

class MagesControllerTest < ActionController::TestCase
  setup do
    @mage = mages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mage" do
    assert_difference('Mage.count') do
      post :create, mage: { path: @mage.path, title: @mage.title }
    end

    assert_redirected_to mage_path(assigns(:mage))
  end

  test "should show mage" do
    get :show, id: @mage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mage
    assert_response :success
  end

  test "should update mage" do
    patch :update, id: @mage, mage: { path: @mage.path, title: @mage.title }
    assert_redirected_to mage_path(assigns(:mage))
  end

  test "should destroy mage" do
    assert_difference('Mage.count', -1) do
      delete :destroy, id: @mage
    end

    assert_redirected_to mages_path
  end
end
