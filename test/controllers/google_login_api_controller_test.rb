require "test_helper"

class GoogleLoginApiControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get google_login_api_callback_url
    assert_response :success
  end
end
