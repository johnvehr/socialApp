require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
    get '/login'
    assert_response :success
  end

  test "that /loout route opens the logout page"do
  get '/logout'
  assert_response :redirect
  assert_redirected_to '/'
  end
end
