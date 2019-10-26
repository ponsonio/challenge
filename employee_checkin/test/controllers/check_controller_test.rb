require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get check_index_url
    assert_response :success
  end

  test "should get in" do
    get check_in_url
    assert_response :success
  end

  test "should get out" do
    get check_out_url
    assert_response :success
  end

end
