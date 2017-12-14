require 'test_helper'

class LinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lines_index_url
    assert_response :success
  end

  test "should get show" do
    get lines_show_url
    assert_response :success
  end

  test "should get new" do
    get lines_new_url
    assert_response :success
  end

  test "should get edit" do
    get lines_edit_url
    assert_response :success
  end

  test "should get delete" do
    get lines_delete_url
    assert_response :success
  end

end
