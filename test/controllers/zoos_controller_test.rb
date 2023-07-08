require "test_helper"

class ZoosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zoos_index_url
    assert_response :success
  end

  test "should get show" do
    get zoos_show_url
    assert_response :success
  end
end
