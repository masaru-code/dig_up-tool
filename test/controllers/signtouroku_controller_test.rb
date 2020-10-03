require 'test_helper'

class SigntourokuControllerTest < ActionDispatch::IntegrationTest
  test "should get iriguti" do
    get signtouroku_iriguti_url
    assert_response :success
  end

  test "should get touroku" do
    get signtouroku_touroku_url
    assert_response :success
  end

end
