require 'test_helper'

class DistancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get distances_new_url
    assert_response :success
  end

  test "should get edit" do
    get distances_edit_url
    assert_response :success
  end

  test "should get index" do
    get distances_index_url
    assert_response :success
  end

  test "should get show" do
    get distances_show_url
    assert_response :success
  end

  test "should get delete" do
    get distances_delete_url
    assert_response :success
  end

end
