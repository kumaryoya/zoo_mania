require "test_helper"

class Admin::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_top_index_url
    assert_response :success
  end
end
