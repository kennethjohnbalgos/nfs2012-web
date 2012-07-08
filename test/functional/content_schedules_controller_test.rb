require 'test_helper'

class ContentSchedulesControllerTest < ActionController::TestCase
  setup do
    @content_schedule = content_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_schedule" do
    assert_difference('ContentSchedule.count') do
      post :create, content_schedule: { clickable: @content_schedule.clickable, content: @content_schedule.content, position: @content_schedule.position, title: @content_schedule.title }
    end

    assert_redirected_to content_schedule_path(assigns(:content_schedule))
  end

  test "should show content_schedule" do
    get :show, id: @content_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_schedule
    assert_response :success
  end

  test "should update content_schedule" do
    put :update, id: @content_schedule, content_schedule: { clickable: @content_schedule.clickable, content: @content_schedule.content, position: @content_schedule.position, title: @content_schedule.title }
    assert_redirected_to content_schedule_path(assigns(:content_schedule))
  end

  test "should destroy content_schedule" do
    assert_difference('ContentSchedule.count', -1) do
      delete :destroy, id: @content_schedule
    end

    assert_redirected_to content_schedules_path
  end
end
