require 'test_helper'

class InfocAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get infoclan_admin" do
    get infoc_admin_infoclan_admin_url
    assert_response :success
  end

end
