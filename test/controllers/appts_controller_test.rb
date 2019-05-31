require 'test_helper'

class ApptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appts_index_url
    assert_response :success
  end

  test "should get show" do
    get appts_show_url
    assert_response :success
  end

end
