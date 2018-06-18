require 'test_helper'

class SolarEnergyGraphControllerTest < ActionDispatch::IntegrationTest
  test "should get solar_energy_graph_view" do
    get solar_energy_graph_solar_energy_graph_view_url
    assert_response :success
  end

end
