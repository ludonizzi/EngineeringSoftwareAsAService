require 'test_helper'

class ClassificaControllerTest < ActionDispatch::IntegrationTest
  test "should get table" do
    get classifica_table_url
    assert_response :success
  end

end
