require "test_helper"

class AvailableOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get available_orders_index_url
    assert_response :success
  end
end
