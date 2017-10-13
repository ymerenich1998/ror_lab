require 'test_helper'

class WellcomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wellcom_index_url
    assert_response :success
  end

end
