require 'test_helper'

class ProfileEditSubFormControllerTest < ActionDispatch::IntegrationTest
  test "should get profile_edit_sub_form_view" do
    get profile_edit_sub_form_profile_edit_sub_form_view_url
    assert_response :success
  end

end
