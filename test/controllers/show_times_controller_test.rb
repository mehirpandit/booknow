require 'test_helper'

class ShowTimesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get show_times_new_url
    assert_response :success
  end

end
