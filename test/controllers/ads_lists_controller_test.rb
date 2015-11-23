require 'test_helper'

class AdsListsControllerTest < ActionController::TestCase
  setup do
    @ads_list = ads_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ads_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ads_list" do
    assert_difference('AdsList.count') do
      post :create, ads_list: { TotalProfit: @ads_list.TotalProfit, UserId: @ads_list.UserId }
    end

    assert_redirected_to ads_list_path(assigns(:ads_list))
  end

  test "should show ads_list" do
    get :show, id: @ads_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ads_list
    assert_response :success
  end

  test "should update ads_list" do
    patch :update, id: @ads_list, ads_list: { TotalProfit: @ads_list.TotalProfit, UserId: @ads_list.UserId }
    assert_redirected_to ads_list_path(assigns(:ads_list))
  end

  test "should destroy ads_list" do
    assert_difference('AdsList.count', -1) do
      delete :destroy, id: @ads_list
    end

    assert_redirected_to ads_lists_path
  end
end
