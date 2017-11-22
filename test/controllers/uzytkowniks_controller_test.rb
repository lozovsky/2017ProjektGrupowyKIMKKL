require 'test_helper'

class UzytkowniksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uzytkowniks_index_url
    assert_response :success
  end

  test "should get new" do
    get uzytkowniks_new_url
    assert_response :success
  end

  test "should get edit" do
    get uzytkowniks_edit_url
    assert_response :success
  end

  test "should get delete" do
    get uzytkowniks_delete_url
    assert_response :success
  end

end
