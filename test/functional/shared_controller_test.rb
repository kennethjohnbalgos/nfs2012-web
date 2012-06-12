require 'test_helper'

class SharedControllerTest < ActionController::TestCase
  test "should get navigation" do
    get :navigation
    assert_response :success
  end

end
