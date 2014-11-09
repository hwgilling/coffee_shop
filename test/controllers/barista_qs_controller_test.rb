require 'test_helper'

class BaristaQsControllerTest < ActionController::TestCase
  setup do
    @barista_q = barista_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barista_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barista_q" do
    assert_difference('BaristaQ.count') do
      post :create, barista_q: {  }
    end

    assert_redirected_to barista_q_path(assigns(:barista_q))
  end

  test "should show barista_q" do
    get :show, id: @barista_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barista_q
    assert_response :success
  end

  test "should update barista_q" do
    patch :update, id: @barista_q, barista_q: {  }
    assert_redirected_to barista_q_path(assigns(:barista_q))
  end

  test "should destroy barista_q" do
    assert_difference('BaristaQ.count', -1) do
      delete :destroy, id: @barista_q
    end

    assert_redirected_to barista_qs_path
  end
end
