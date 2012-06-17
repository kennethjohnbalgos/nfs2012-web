require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get showdown" do
    get :showdown
    assert_response :success
  end

end
