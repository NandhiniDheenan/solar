require 'test_helper'

class DgAcDeReportControllerTest < ActionDispatch::IntegrationTest
  test "should get DG_AC_DE_report_view" do
    get dg_ac_de_report_DG_AC_DE_report_view_url
    assert_response :success
  end

end
