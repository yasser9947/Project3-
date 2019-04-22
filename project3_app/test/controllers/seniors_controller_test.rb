require 'test_helper'

class SeniorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seniors_index_url
    assert_response :success
  end

  test "should get new" do
    get seniors_new_url
    assert_response :success
  end

  test "should get show" do
    get seniors_show_url
    assert_response :success
  end

  test "should get edit" do
    get seniors_edit_url
    assert_response :success
  end

end
