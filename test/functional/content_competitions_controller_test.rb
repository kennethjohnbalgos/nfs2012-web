require 'test_helper'

class ContentCompetitionsControllerTest < ActionController::TestCase
  setup do
    @content_competition = content_competitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_competitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_competition" do
    assert_difference('ContentCompetition.count') do
      post :create, content_competition: { clickable: @content_competition.clickable, content: @content_competition.content, position: @content_competition.position, title: @content_competition.title }
    end

    assert_redirected_to content_competition_path(assigns(:content_competition))
  end

  test "should show content_competition" do
    get :show, id: @content_competition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_competition
    assert_response :success
  end

  test "should update content_competition" do
    put :update, id: @content_competition, content_competition: { clickable: @content_competition.clickable, content: @content_competition.content, position: @content_competition.position, title: @content_competition.title }
    assert_redirected_to content_competition_path(assigns(:content_competition))
  end

  test "should destroy content_competition" do
    assert_difference('ContentCompetition.count', -1) do
      delete :destroy, id: @content_competition
    end

    assert_redirected_to content_competitions_path
  end
end
