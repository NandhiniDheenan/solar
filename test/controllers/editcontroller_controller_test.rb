require 'test_helper'

class EditcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get editctrlr_index" do
    get editcontroller_editctrlr_index_url
    assert_response :success
  end

end
