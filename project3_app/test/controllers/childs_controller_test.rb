require 'test_helper'

class ChildsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get childs_index_url
    assert_response :success
  end

  test "should get new" do
    get childs_new_url
    assert_response :success
  end

  test "should get show" do
    get childs_show_url
    assert_response :success
  end

  test "should get edit" do
    get childs_edit_url
    assert_response :success
  end

end
