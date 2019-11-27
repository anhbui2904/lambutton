require "application_system_test_case"

class XxxesTest < ApplicationSystemTestCase
  setup do
    @xxx = xxxes(:one)
  end

  test "visiting the index" do
    visit xxxes_url
    assert_selector "h1", text: "Xxxes"
  end

  test "creating a Xxx" do
    visit xxxes_url
    click_on "New Xxx"

    fill_in "Description", with: @xxx.description
    fill_in "Image", with: @xxx.image
    fill_in "Star", with: @xxx.star
    fill_in "Title", with: @xxx.title
    fill_in "Video", with: @xxx.video
    click_on "Create Xxx"

    assert_text "Xxx was successfully created"
    click_on "Back"
  end

  test "updating a Xxx" do
    visit xxxes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @xxx.description
    fill_in "Image", with: @xxx.image
    fill_in "Star", with: @xxx.star
    fill_in "Title", with: @xxx.title
    fill_in "Video", with: @xxx.video
    click_on "Update Xxx"

    assert_text "Xxx was successfully updated"
    click_on "Back"
  end

  test "destroying a Xxx" do
    visit xxxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Xxx was successfully destroyed"
  end
end
