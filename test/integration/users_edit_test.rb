require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: {
      user: {
        nickname: "",
        name: "",
        surname: "",
        email: "foo@invalid",
        password: "foo",
        password_confirmation: "bar"
      }
    }
    assert_template 'users/edit'
  end

  test "successful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    nickname = "trolololo"
    name = "Trolo"
    surname = "Lolo"
    email = "trolo@lolo.com"
    patch user_path(@user), params: {
      user: {
        nickname: nickname,
        name: name,
        surname: surname,
        email: email,
        password: "",
        password_confirmation: ""
      }
    }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal nickname, @user.nickname
    assert_equal name, @user.name
    assert_equal surname, @user.surname
    assert_equal email, @user.email
  end
end
