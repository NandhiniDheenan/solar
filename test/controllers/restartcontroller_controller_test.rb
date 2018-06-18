require 'test_helper'

class RestartcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get restartctrlr_index" do
    get restartcontroller_restartctrlr_index_url
    assert_response :success
  end

end
