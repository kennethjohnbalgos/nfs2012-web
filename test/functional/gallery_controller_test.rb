require 'test_helper'

class GalleryControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get showdown_2009" do
    get :showdown_2009
    assert_response :success
  end

  test "should get showdown_2010" do
    get :showdown_2010
    assert_response :success
  end

  test "should get showdown_2011" do
    get :showdown_2011
    assert_response :success
  end

end
