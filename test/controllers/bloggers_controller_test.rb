require 'test_helper'

class BloggersControllerTest < ActionController::TestCase
  setup do
    @blogger = bloggers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloggers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blogger" do
    assert_difference('Blogger.count') do
      post :create, blogger: { address: @blogger.address, age: @blogger.age, gender: @blogger.gender, name: @blogger.name }
    end

    assert_redirected_to blogger_path(assigns(:blogger))
  end

  test "should show blogger" do
    get :show, id: @blogger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blogger
    assert_response :success
  end

  test "should update blogger" do
    patch :update, id: @blogger, blogger: { address: @blogger.address, age: @blogger.age, gender: @blogger.gender, name: @blogger.name }
    assert_redirected_to blogger_path(assigns(:blogger))
  end

  test "should destroy blogger" do
    assert_difference('Blogger.count', -1) do
      delete :destroy, id: @blogger
    end

    assert_redirected_to bloggers_path
  end
end
