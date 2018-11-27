require 'test_helper'

class SeatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seating = seatings(:one)
  end

  test "should get index" do
    get seatings_url
    assert_response :success
  end

  test "should get new" do
    get new_seating_url
    assert_response :success
  end

  test "should create seating" do
    assert_difference('Seating.count') do
      post seatings_url, params: { seating: { seat_no: @seating.seat_no, seat_row: @seating.seat_row } }
    end

    assert_redirected_to seating_url(Seating.last)
  end

  test "should show seating" do
    get seating_url(@seating)
    assert_response :success
  end

  test "should get edit" do
    get edit_seating_url(@seating)
    assert_response :success
  end

  test "should update seating" do
    patch seating_url(@seating), params: { seating: { seat_no: @seating.seat_no, seat_row: @seating.seat_row } }
    assert_redirected_to seating_url(@seating)
  end

  test "should destroy seating" do
    assert_difference('Seating.count', -1) do
      delete seating_url(@seating)
    end

    assert_redirected_to seatings_url
  end
end
