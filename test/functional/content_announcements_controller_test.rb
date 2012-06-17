require 'test_helper'

class ContentAnnouncementsControllerTest < ActionController::TestCase
  setup do
    @content_announcement = content_announcements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_announcements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_announcement" do
    assert_difference('ContentAnnouncement.count') do
      post :create, content_announcement: { clickable: @content_announcement.clickable, content: @content_announcement.content, position: @content_announcement.position, title: @content_announcement.title }
    end

    assert_redirected_to content_announcement_path(assigns(:content_announcement))
  end

  test "should show content_announcement" do
    get :show, id: @content_announcement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_announcement
    assert_response :success
  end

  test "should update content_announcement" do
    put :update, id: @content_announcement, content_announcement: { clickable: @content_announcement.clickable, content: @content_announcement.content, position: @content_announcement.position, title: @content_announcement.title }
    assert_redirected_to content_announcement_path(assigns(:content_announcement))
  end

  test "should destroy content_announcement" do
    assert_difference('ContentAnnouncement.count', -1) do
      delete :destroy, id: @content_announcement
    end

    assert_redirected_to content_announcements_path
  end
end
