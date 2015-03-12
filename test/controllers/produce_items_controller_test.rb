require 'test_helper'

class ProduceItemsControllerTest < ActionController::TestCase
  setup do
    @produce_item = produce_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produce_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produce_item" do
    assert_difference('ProduceItem.count') do
      post :create, produce_item: { name: @produce_item.name }
    end

    assert_redirected_to produce_item_path(assigns(:produce_item))
  end

  test "should show produce_item" do
    get :show, id: @produce_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produce_item
    assert_response :success
  end

  test "should update produce_item" do
    patch :update, id: @produce_item, produce_item: { name: @produce_item.name }
    assert_redirected_to produce_item_path(assigns(:produce_item))
  end

  test "should destroy produce_item" do
    assert_difference('ProduceItem.count', -1) do
      delete :destroy, id: @produce_item
    end

    assert_redirected_to produce_items_path
  end
end
