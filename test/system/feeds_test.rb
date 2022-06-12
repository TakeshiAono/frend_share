require "application_system_test_case"

class FeedsTest < ApplicationSystemTestCase
  setup do
    @picture = pictures(:one)
  end

  test "visiting the index" do
    visit pictures_url
    assert_selector "h1", text: "Feeds"
  end

  test "creating a Feed" do
    visit pictures_url
    click_on "New Feed"

    fill_in "Image", with: @picture.image
    click_on "Create Feed"

    assert_text "Feed was successfully created"
    click_on "Back"
  end

  test "updating a Feed" do
    visit pictures_url
    click_on "Edit", match: :first

    fill_in "Image", with: @picture.image
    click_on "Update Feed"

    assert_text "Feed was successfully updated"
    click_on "Back"
  end

  test "destroying a Feed" do
    visit pictures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feed was successfully destroyed"
  end
end
