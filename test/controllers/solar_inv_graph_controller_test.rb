require 'test_helper'

class SolarInvGraphControllerTest < ActionDispatch::IntegrationTest
  test "should get solar_inv_graph_view" do
    get solar_inv_graph_solar_inv_graph_view_url
    assert_response :success
  end

end
