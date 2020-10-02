require 'test_helper'

class DigTopControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get dig_top_home_url
    assert_response :success
  end

  test "should get help" do
    get dig_top_help_url
    assert_response :success
  end

end
