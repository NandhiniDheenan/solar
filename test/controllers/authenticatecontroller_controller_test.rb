require 'test_helper'

class AuthenticatecontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get authenticatectrlr_index" do
    get authenticatecontroller_authenticatectrlr_index_url
    assert_response :success
  end

end
