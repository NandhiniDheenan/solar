require 'test_helper'

class AddcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get addcontroller_index" do
    get addcontroller_addcontroller_index_url
    assert_response :success
  end

end
