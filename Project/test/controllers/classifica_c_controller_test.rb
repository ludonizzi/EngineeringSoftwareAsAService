require 'test_helper'

class ClassificaCControllerTest < ActionDispatch::IntegrationTest
  test "should get table" do
    get classifica_c_table_url
    assert_response :success
  end

end
