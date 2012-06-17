require 'test_helper'

class ContentArchivesControllerTest < ActionController::TestCase
  setup do
    @content_archive = content_archives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_archive" do
    assert_difference('ContentArchive.count') do
      post :create, content_archive: { clickable: @content_archive.clickable, content: @content_archive.content, position: @content_archive.position, title: @content_archive.title }
    end

    assert_redirected_to content_archive_path(assigns(:content_archive))
  end

  test "should show content_archive" do
    get :show, id: @content_archive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_archive
    assert_response :success
  end

  test "should update content_archive" do
    put :update, id: @content_archive, content_archive: { clickable: @content_archive.clickable, content: @content_archive.content, position: @content_archive.position, title: @content_archive.title }
    assert_redirected_to content_archive_path(assigns(:content_archive))
  end

  test "should destroy content_archive" do
    assert_difference('ContentArchive.count', -1) do
      delete :destroy, id: @content_archive
    end

    assert_redirected_to content_archives_path
  end
end
