require "application_system_test_case"

class TwitterclonsTest < ApplicationSystemTestCase
  setup do
    @twitterclon = twitterclons(:one)
  end

  test "visiting the index" do
    visit twitterclons_url
    assert_selector "h1", text: "Twitterclons"
  end

  test "should create twitterclon" do
    visit twitterclons_url
    click_on "New twitterclon"

    fill_in "Description", with: @twitterclon.description
    fill_in "Username", with: @twitterclon.username
    click_on "Create Twitterclon"

    assert_text "Twitterclon was successfully created"
    click_on "Back"
  end

  test "should update Twitterclon" do
    visit twitterclon_url(@twitterclon)
    click_on "Edit this twitterclon", match: :first

    fill_in "Description", with: @twitterclon.description
    fill_in "Username", with: @twitterclon.username
    click_on "Update Twitterclon"

    assert_text "Twitterclon was successfully updated"
    click_on "Back"
  end

  test "should destroy Twitterclon" do
    visit twitterclon_url(@twitterclon)
    click_on "Destroy this twitterclon", match: :first

    assert_text "Twitterclon was successfully destroyed"
  end
end
