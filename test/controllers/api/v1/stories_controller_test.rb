require "test_helper"

class Api::V1::StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_stories_index_url
    assert_response :success
  end
end
