require "test_helper"

class ClockHistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clock_history_new_url
    assert_response :success
  end
end
