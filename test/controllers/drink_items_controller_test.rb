require 'test_helper'

class DrinkItemsControllerTest < ActionController::TestCase
  setup do
    @drink_item = drink_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drink_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink_item" do
    assert_difference('DrinkItem.count') do
      post :create, drink_item: { addins: @drink_item.addins, cost: @drink_item.cost, extra_shot: @drink_item.extra_shot, iced: @drink_item.iced, milk: @drink_item.milk, name: @drink_item.name, order_id: @drink_item.order_id, size: @drink_item.size }
    end

    assert_redirected_to drink_item_path(assigns(:drink_item))
  end

  test "should show drink_item" do
    get :show, id: @drink_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drink_item
    assert_response :success
  end

  test "should update drink_item" do
    patch :update, id: @drink_item, drink_item: { addins: @drink_item.addins, cost: @drink_item.cost, extra_shot: @drink_item.extra_shot, iced: @drink_item.iced, milk: @drink_item.milk, name: @drink_item.name, order_id: @drink_item.order_id, size: @drink_item.size }
    assert_redirected_to drink_item_path(assigns(:drink_item))
  end

  test "should destroy drink_item" do
    assert_difference('DrinkItem.count', -1) do
      delete :destroy, id: @drink_item
    end

    assert_redirected_to drink_items_path
  end
end
