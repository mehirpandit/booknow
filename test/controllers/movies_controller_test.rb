require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movies_new_url
    assert_response :success
  end

end
