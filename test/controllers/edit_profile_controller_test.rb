require 'test_helper'

class EditProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get edit_profile_view" do
    get edit_profile_edit_profile_view_url
    assert_response :success
  end

end
