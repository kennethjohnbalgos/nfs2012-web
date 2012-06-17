require 'test_helper'

class AnnouncementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get content" do
    get :content
    assert_response :success
  end

end
