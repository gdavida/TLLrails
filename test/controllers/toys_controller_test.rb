# require 'test_helper'

class ToysControllerTest < ActionController::TestCase
  test "should get index" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    get :index
    assert_response :success
  end

test "should get create" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    post :create, toy: {'id' => toys.id}
    byebug
    assert_redirected_to toys_path
  end

  test "should get new" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    get :new
    assert_response :success
  end

  test "should get show" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    get :show, {'id' => toys(:one).id}
    assert_response :success
  end

  test "should get update" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    @toy = toys(:one)
    patch :update, id:@toy, toy: {name: "Something Else"}
    assert_redirected_to toys_path
  end

  test "should get destroy" do
  @user = users(:default_user)
	login_user(user=@user, route=login_path)
    delete :destroy, {'id' => toys(:one).id}
    assert_redirected_to toys_path
  end
end
