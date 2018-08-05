require 'test_helper'

class IncidentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get incidents_new_url
    assert_response :success
  end

end
