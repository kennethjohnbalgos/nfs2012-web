require 'test_helper'

class ContentAboutsControllerTest < ActionController::TestCase
  setup do
    @content_about = content_abouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_abouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_about" do
    assert_difference('ContentAbout.count') do
      post :create, content_about: { clickable: @content_about.clickable, content: @content_about.content, position: @content_about.position, title: @content_about.title }
    end

    assert_redirected_to content_about_path(assigns(:content_about))
  end

  test "should show content_about" do
    get :show, id: @content_about
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_about
    assert_response :success
  end

  test "should update content_about" do
    put :update, id: @content_about, content_about: { clickable: @content_about.clickable, content: @content_about.content, position: @content_about.position, title: @content_about.title }
    assert_redirected_to content_about_path(assigns(:content_about))
  end

  test "should destroy content_about" do
    assert_difference('ContentAbout.count', -1) do
      delete :destroy, id: @content_about
    end

    assert_redirected_to content_abouts_path
  end
end
