require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "War-Rails"
  end


  test "should get regolamento" do
    get regolamento_url
    assert_response :success
    assert_select "title", "Regolamento"
  end

  test "should get infoclan" do
    get infoclan_url
    assert_response :success
    assert_select "title", "InfoClan"

  end

  test "should get aboutapp" do
    get aboutapp_url
    assert_response :success
    assert_select "title", "AboutApp"

  end



  test "should get contatti" do
    get contatti_url
    assert_response :success
    assert_select "title", "Contatti"

  end



end
