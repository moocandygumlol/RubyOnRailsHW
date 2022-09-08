require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get test" do
    get main_test_url
    assert_response :success
  end

  test "should get check" do
    get main_check_url
    assert_response :success
  end

  test "should get calculate" do
    get main_calculate_url
    assert_response :success
  end
end
