require 'test_helper'

class DigHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get dighome" do
    get dig_home_dighome_url
    assert_response :success
  end

  test "should get jikou" do
    get dig_home_jikou_url
    assert_response :success
  end

  test "should get chat_room" do
    get dig_home_chat_room_url
    assert_response :success
  end

  test "should get minna" do
    get dig_home_minna_url
    assert_response :success
  end

  test "should get proces" do
    get dig_home_proces_url
    assert_response :success
  end

end
