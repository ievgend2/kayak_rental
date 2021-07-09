require "application_system_test_case"

class KayaksTest < ApplicationSystemTestCase
  setup do
    @kayak = kayaks(:one)
  end

  test "visiting the index" do
    visit kayaks_url
    assert_selector "h1", text: "Kayaks"
  end

  test "creating a Kayak" do
    visit kayaks_url
    click_on "New Kayak"

    fill_in "Capacity", with: @kayak.capacity
    fill_in "Location", with: @kayak.location
    fill_in "Name", with: @kayak.name
    fill_in "Price", with: @kayak.price
    click_on "Create Kayak"

    assert_text "Kayak was successfully created"
    click_on "Back"
  end

  test "updating a Kayak" do
    visit kayaks_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @kayak.capacity
    fill_in "Location", with: @kayak.location
    fill_in "Name", with: @kayak.name
    fill_in "Price", with: @kayak.price
    click_on "Update Kayak"

    assert_text "Kayak was successfully updated"
    click_on "Back"
  end

  test "destroying a Kayak" do
    visit kayaks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kayak was successfully destroyed"
  end
end
