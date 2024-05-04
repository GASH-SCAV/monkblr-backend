require "test_helper"

class SanctifiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sanctifies_create_url
    assert_response :success
  end
end
