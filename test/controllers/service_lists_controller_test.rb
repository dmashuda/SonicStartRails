require 'test_helper'

class ServiceListsControllerTest < ActionController::TestCase
  setup do
    @service_list = service_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_list" do
    assert_difference('ServiceList.count') do
      post :create, service_list: {  }
    end

    assert_redirected_to service_list_path(assigns(:service_list))
  end

  test "should show service_list" do
    get :show, id: @service_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_list
    assert_response :success
  end

  test "should update service_list" do
    patch :update, id: @service_list, service_list: {  }
    assert_redirected_to service_list_path(assigns(:service_list))
  end

  test "should destroy service_list" do
    assert_difference('ServiceList.count', -1) do
      delete :destroy, id: @service_list
    end

    assert_redirected_to service_lists_path
  end
end
