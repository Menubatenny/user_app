require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "creating Address" do
    visit details_url
    click_on "New Address"

    fill_in "Deliver address", with: @detail.deliver_address
    fill_in "Pickup address", with: @detail.pickup_address
    click_on "Create"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Detail" do
    visit details_url
    click_on "Edit", match: :first

    fill_in "Deliver address", with: @detail.deliver_address
    fill_in "Pickup address", with: @detail.pickup_address
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "deleting Address" do
    visit details_url
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Address was successfully deleted"
  end
end
