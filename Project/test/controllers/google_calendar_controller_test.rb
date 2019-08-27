require 'test_helper'

class GoogleCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get google_calendar_show_url
    assert_response :success
  end

end
