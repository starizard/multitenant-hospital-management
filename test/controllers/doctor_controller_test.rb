require 'test_helper'

class DoctorControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get doctor_profile_url
    assert_response :success
  end

end
