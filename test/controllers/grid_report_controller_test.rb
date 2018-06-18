require 'test_helper'

class GridReportControllerTest < ActionDispatch::IntegrationTest
  test "should get grid_report_view" do
    get grid_report_grid_report_view_url
    assert_response :success
  end

end
