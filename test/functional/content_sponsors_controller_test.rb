require 'test_helper'

class ContentSponsorsControllerTest < ActionController::TestCase
  setup do
    @content_sponsor = content_sponsors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_sponsor" do
    assert_difference('ContentSponsor.count') do
      post :create, content_sponsor: { clickable: @content_sponsor.clickable, content: @content_sponsor.content, position: @content_sponsor.position, title: @content_sponsor.title }
    end

    assert_redirected_to content_sponsor_path(assigns(:content_sponsor))
  end

  test "should show content_sponsor" do
    get :show, id: @content_sponsor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_sponsor
    assert_response :success
  end

  test "should update content_sponsor" do
    put :update, id: @content_sponsor, content_sponsor: { clickable: @content_sponsor.clickable, content: @content_sponsor.content, position: @content_sponsor.position, title: @content_sponsor.title }
    assert_redirected_to content_sponsor_path(assigns(:content_sponsor))
  end

  test "should destroy content_sponsor" do
    assert_difference('ContentSponsor.count', -1) do
      delete :destroy, id: @content_sponsor
    end

    assert_redirected_to content_sponsors_path
  end
end
