require 'test_helper'

class ClassificaCAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get table_admin" do
    get classifica_c_admin_table_admin_url
    assert_response :success
  end

end
