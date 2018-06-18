require 'test_helper'

class ViewProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get view_profile_view" do
    get view_profile_view_profile_view_url
    assert_response :success
  end

end
