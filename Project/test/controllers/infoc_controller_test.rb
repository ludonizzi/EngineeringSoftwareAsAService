require 'test_helper'

class InfocControllerTest < ActionDispatch::IntegrationTest
  test "should get infoclan" do
    get infoc_infoclan_url
    assert_response :success
  end

end
