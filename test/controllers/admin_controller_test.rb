require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_index" do
    get admin_admin_index_url
    assert_response :success
  end

end
