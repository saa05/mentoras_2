require "test_helper"

class MentorasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentoras_index_url
    assert_response :success
  end
end
