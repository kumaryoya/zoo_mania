require "test_helper"

class Admin::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dashboards_index_url
    assert_response :success
  end
end
