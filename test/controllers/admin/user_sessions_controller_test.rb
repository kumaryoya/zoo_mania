require "test_helper"

class Admin::UserSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_user_sessions_new_url
    assert_response :success
  end
end
