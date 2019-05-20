require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get regolamento" do
    get static_pages_regolamento_url
    assert_response :success
  end

  test "should get infoclan" do
    get static_pages_infoclan_url
    assert_response :success
  end

  test "should get aboutapp" do
    get static_pages_aboutapp_url
    assert_response :success
  end

  test "should get contatti" do
    get static_pages_contatti_url
    assert_response :success
  end

end
