require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get item_show_url
    assert_response :success
  end

end
