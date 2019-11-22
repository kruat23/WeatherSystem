require "application_system_test_case"

class DailiesTest < ApplicationSystemTestCase
  setup do
    @daily = dailies(:one)
  end

  test "visiting the index" do
    visit dailies_url
    assert_selector "h1", text: "Dailies"
  end

  test "creating a Daily" do
    visit dailies_url
    click_on "New Daily"

    fill_in "Day", with: @daily.day
    check "Fog" if @daily.fog
    fill_in "Location", with: @daily.location_id
    fill_in "Max", with: @daily.max
    fill_in "Min", with: @daily.min
    fill_in "Month", with: @daily.month
    fill_in "Note", with: @daily.note
    fill_in "Precipitation", with: @daily.precipitation
    check "Rain" if @daily.rain
    check "Shower" if @daily.shower
    check "Sleet" if @daily.sleet
    check "Snow" if @daily.snow
    fill_in "Snow cover", with: @daily.snow_cover
    check "Snow shower" if @daily.snow_shower
    check "Storm" if @daily.storm
    fill_in "Uploader", with: @daily.uploader_id
    click_on "Create Daily"

    assert_text "Daily was successfully created"
    click_on "Back"
  end

  test "updating a Daily" do
    visit dailies_url
    click_on "Edit", match: :first

    fill_in "Day", with: @daily.day
    check "Fog" if @daily.fog
    fill_in "Location", with: @daily.location_id
    fill_in "Max", with: @daily.max
    fill_in "Min", with: @daily.min
    fill_in "Month", with: @daily.month
    fill_in "Note", with: @daily.note
    fill_in "Precipitation", with: @daily.precipitation
    check "Rain" if @daily.rain
    check "Shower" if @daily.shower
    check "Sleet" if @daily.sleet
    check "Snow" if @daily.snow
    fill_in "Snow cover", with: @daily.snow_cover
    check "Snow shower" if @daily.snow_shower
    check "Storm" if @daily.storm
    fill_in "Uploader", with: @daily.uploader_id
    click_on "Update Daily"

    assert_text "Daily was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily" do
    visit dailies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily was successfully destroyed"
  end
end
