require 'test_helper'

class FoodQsControllerTest < ActionController::TestCase
  setup do
    @food_q = food_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_q" do
    assert_difference('FoodQ.count') do
      post :create, food_q: {  }
    end

    assert_redirected_to food_q_path(assigns(:food_q))
  end

  test "should show food_q" do
    get :show, id: @food_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_q
    assert_response :success
  end

  test "should update food_q" do
    patch :update, id: @food_q, food_q: {  }
    assert_redirected_to food_q_path(assigns(:food_q))
  end

  test "should destroy food_q" do
    assert_difference('FoodQ.count', -1) do
      delete :destroy, id: @food_q
    end

    assert_redirected_to food_qs_path
  end
end
