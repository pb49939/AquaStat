require "application_system_test_case"

class AlkalinitiesTest < ApplicationSystemTestCase
  setup do
    @alkalinity = alkalinities(:one)
  end

  test "visiting the index" do
    visit alkalinities_url
    assert_selector "h1", text: "Alkalinities"
  end

  test "creating a Alkalinity" do
    visit alkalinities_url
    click_on "New Alkalinity"

    fill_in "Dkh", with: @alkalinity.dKH
    click_on "Create Alkalinity"

    assert_text "Alkalinity was successfully created"
    click_on "Back"
  end

  test "updating a Alkalinity" do
    visit alkalinities_url
    click_on "Edit", match: :first

    fill_in "Dkh", with: @alkalinity.dKH
    click_on "Update Alkalinity"

    assert_text "Alkalinity was successfully updated"
    click_on "Back"
  end

  test "destroying a Alkalinity" do
    visit alkalinities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alkalinity was successfully destroyed"
  end
end
