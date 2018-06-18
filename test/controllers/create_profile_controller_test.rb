require 'test_helper'

class CreateProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get Create_profile_view" do
    get create_profile_Create_profile_view_url
    assert_response :success
  end

end
