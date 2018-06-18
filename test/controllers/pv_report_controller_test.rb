require 'test_helper'

class PvReportControllerTest < ActionDispatch::IntegrationTest
  test "should get pv_report_view" do
    get pv_report_pv_report_view_url
    assert_response :success
  end

end
