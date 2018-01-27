require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get details_new_url
    assert_response :success
  end

end
