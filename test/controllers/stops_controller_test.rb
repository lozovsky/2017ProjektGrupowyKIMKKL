require 'test_helper'

class StopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stops_index_url
    assert_response :success
  end

  test "should get new" do
    get stops_new_url
    assert_response :success
  end

  test "should get edit" do
    get stops_edit_url
    assert_response :success
  end

end
