require 'test_helper'

class UpdateCtrlrControllerTest < ActionDispatch::IntegrationTest
  test "should get updatectrlr_index" do
    get update_ctrlr_updatectrlr_index_url
    assert_response :success
  end

end
