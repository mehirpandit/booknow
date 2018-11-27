require "application_system_test_case"

class SeatingsTest < ApplicationSystemTestCase
  setup do
    @seating = seatings(:one)
  end

  test "visiting the index" do
    visit seatings_url
    assert_selector "h1", text: "Seatings"
  end

  test "creating a Seating" do
    visit seatings_url
    click_on "New Seating"

    fill_in "Seat No", with: @seating.seat_no
    fill_in "Seat Row", with: @seating.seat_row
    click_on "Create Seating"

    assert_text "Seating was successfully created"
    click_on "Back"
  end

  test "updating a Seating" do
    visit seatings_url
    click_on "Edit", match: :first

    fill_in "Seat No", with: @seating.seat_no
    fill_in "Seat Row", with: @seating.seat_row
    click_on "Update Seating"

    assert_text "Seating was successfully updated"
    click_on "Back"
  end

  test "destroying a Seating" do
    visit seatings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seating was successfully destroyed"
  end
end
