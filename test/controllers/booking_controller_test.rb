require 'test_helper'

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get booking_show_url
    assert_response :success
  end

  test "should get edit" do
    get booking_edit_url
    assert_response :success
  end

end
