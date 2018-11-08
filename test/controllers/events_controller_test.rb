require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get events_home_url
    assert_response :success
  end

  test "should get index" do
    get events_index_url
    assert_response :success
  end

end
