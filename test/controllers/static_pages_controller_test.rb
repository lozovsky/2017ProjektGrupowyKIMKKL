require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_line" do
    get static_pages_user_line_url
    assert_response :success
  end

  test "should get user_stop" do
    get static_pages_user_stop_url
    assert_response :success
  end

end
