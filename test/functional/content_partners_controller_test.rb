require 'test_helper'

class ContentPartnersControllerTest < ActionController::TestCase
  setup do
    @content_partner = content_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_partner" do
    assert_difference('ContentPartner.count') do
      post :create, content_partner: { clickable: @content_partner.clickable, content: @content_partner.content, position: @content_partner.position, title: @content_partner.title }
    end

    assert_redirected_to content_partner_path(assigns(:content_partner))
  end

  test "should show content_partner" do
    get :show, id: @content_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_partner
    assert_response :success
  end

  test "should update content_partner" do
    put :update, id: @content_partner, content_partner: { clickable: @content_partner.clickable, content: @content_partner.content, position: @content_partner.position, title: @content_partner.title }
    assert_redirected_to content_partner_path(assigns(:content_partner))
  end

  test "should destroy content_partner" do
    assert_difference('ContentPartner.count', -1) do
      delete :destroy, id: @content_partner
    end

    assert_redirected_to content_partners_path
  end
end
