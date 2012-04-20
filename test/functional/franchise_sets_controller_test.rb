require 'test_helper'

class FranchiseSetsControllerTest < ActionController::TestCase
  setup do
    @franchise_set = franchise_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:franchise_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create franchise_set" do
    assert_difference('FranchiseSet.count') do
      post :create, franchise_set: @franchise_set.attributes
    end

    assert_redirected_to franchise_set_path(assigns(:franchise_set))
  end

  test "should show franchise_set" do
    get :show, id: @franchise_set.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @franchise_set.to_param
    assert_response :success
  end

  test "should update franchise_set" do
    put :update, id: @franchise_set.to_param, franchise_set: @franchise_set.attributes
    assert_redirected_to franchise_set_path(assigns(:franchise_set))
  end

  test "should destroy franchise_set" do
    assert_difference('FranchiseSet.count', -1) do
      delete :destroy, id: @franchise_set.to_param
    end

    assert_redirected_to franchise_sets_path
  end
end
