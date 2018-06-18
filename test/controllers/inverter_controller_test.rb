require 'test_helper'

class InverterControllerTest < ActionDispatch::IntegrationTest
  test "should get invert_index" do
    get inverter_invert_index_url
    assert_response :success
  end

end
