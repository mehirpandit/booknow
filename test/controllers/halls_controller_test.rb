require 'test_helper'

class HallsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get halls_new_url
    assert_response :success
  end

end
