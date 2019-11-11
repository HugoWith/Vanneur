require 'test_helper'

class VansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vans_new_url
    assert_response :success
  end

  test "should get create" do
    get vans_create_url
    assert_response :success
  end

  test "should get show" do
    get vans_show_url
    assert_response :success
  end

end
