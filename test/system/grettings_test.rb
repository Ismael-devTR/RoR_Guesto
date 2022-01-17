require "application_system_test_case"

class GrettingsTest < ApplicationSystemTestCase
  setup do
    @gretting = grettings(:one)
  end

  test "visiting the index" do
    visit grettings_url
    assert_selector "h1", text: "Grettings"
  end

  test "creating a Gretting" do
    visit grettings_url
    click_on "New Gretting"

    fill_in "Message", with: @gretting.message
    fill_in "Name", with: @gretting.name
    click_on "Create Gretting"

    assert_text "Gretting was successfully created"
    click_on "Back"
  end

  test "updating a Gretting" do
    visit grettings_url
    click_on "Edit", match: :first

    fill_in "Message", with: @gretting.message
    fill_in "Name", with: @gretting.name
    click_on "Update Gretting"

    assert_text "Gretting was successfully updated"
    click_on "Back"
  end

  test "destroying a Gretting" do
    visit grettings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gretting was successfully destroyed"
  end
end
