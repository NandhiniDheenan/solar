require 'test_helper'

class MainreportControllerTest < ActionDispatch::IntegrationTest
  test "should get repor" do
    get mainreport_repor_url
    assert_response :success
  end

end
