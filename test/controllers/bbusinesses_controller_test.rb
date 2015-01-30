require 'test_helper'

class BbusinessesControllerTest < ActionController::TestCase
  setup do
    @bbusiness = bbusinesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbusinesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bbusiness" do
    assert_difference('Bbusiness.count') do
      post :create, bbusiness: { address: @bbusiness.address, name: @bbusiness.name, string: @bbusiness.string, webpage: @bbusiness.webpage }
    end

    assert_redirected_to bbusiness_path(assigns(:bbusiness))
  end

  test "should show bbusiness" do
    get :show, id: @bbusiness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bbusiness
    assert_response :success
  end

  test "should update bbusiness" do
    patch :update, id: @bbusiness, bbusiness: { address: @bbusiness.address, name: @bbusiness.name, string: @bbusiness.string, webpage: @bbusiness.webpage }
    assert_redirected_to bbusiness_path(assigns(:bbusiness))
  end

  test "should destroy bbusiness" do
    assert_difference('Bbusiness.count', -1) do
      delete :destroy, id: @bbusiness
    end

    assert_redirected_to bbusinesses_path
  end
end
