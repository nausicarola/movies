require "test_helper"

class Series1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get series1_index_url
    assert_response :success
  end

  test "should get new" do
    get series1_new_url
    assert_response :success
  end

  test "should get create" do
    get series1_create_url
    assert_response :success
  end
end
