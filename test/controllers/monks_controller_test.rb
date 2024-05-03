require "test_helper"

class MonksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get monks_new_url
    assert_response :success
  end

  test "should get create" do
    get monks_create_url
    assert_response :success
  end

  test "should get show" do
    get monks_show_url
    assert_response :success
  end

  test "should get index" do
    get monks_index_url
    assert_response :success
  end
end
