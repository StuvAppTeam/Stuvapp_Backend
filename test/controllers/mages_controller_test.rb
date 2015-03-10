require 'test_helper'

class MagesControllerTest < ActionController::TestCase
  setup do
    @image = mages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:Images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post :create, image: { path: @image.path, title: @image.title }
    end

    assert_redirected_to mage_path(assigns(:image))
  end

  test "should show image" do
    get :show, id: @image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image
    assert_response :success
  end

  test "should update image" do
    patch :update, id: @image, image: { path: @image.path, title: @image.title }
    assert_redirected_to mage_path(assigns(:image))
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete :destroy, id: @image
    end

    assert_redirected_to mages_path
  end
end
