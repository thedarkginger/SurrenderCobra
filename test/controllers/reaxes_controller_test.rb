require 'test_helper'

class ReaxesControllerTest < ActionController::TestCase
  setup do
    @reax = reaxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reaxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reax" do
    assert_difference('Reax.count') do
      post :create, reax: { post: @reax.post, submission: @reax.submission, upvotes: @reax.upvotes, user: @reax.user, username: @reax.username }
    end

    assert_redirected_to reax_path(assigns(:reax))
  end

  test "should show reax" do
    get :show, id: @reax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reax
    assert_response :success
  end

  test "should update reax" do
    patch :update, id: @reax, reax: { post: @reax.post, submission: @reax.submission, upvotes: @reax.upvotes, user: @reax.user, username: @reax.username }
    assert_redirected_to reax_path(assigns(:reax))
  end

  test "should destroy reax" do
    assert_difference('Reax.count', -1) do
      delete :destroy, id: @reax
    end

    assert_redirected_to reaxes_path
  end
end
