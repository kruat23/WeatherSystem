require 'test_helper'

class DailiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily = dailies(:one)
  end

  test "should get index" do
    get dailies_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_url
    assert_response :success
  end

  test "should create daily" do
    assert_difference('Daily.count') do
      post dailies_url, params: { daily: { day: @daily.day, fog: @daily.fog, location_id: @daily.location_id, max: @daily.max, min: @daily.min, month: @daily.month, note: @daily.note, precipitation: @daily.precipitation, rain: @daily.rain, shower: @daily.shower, sleet: @daily.sleet, snow: @daily.snow, snow_cover: @daily.snow_cover, snow_shower: @daily.snow_shower, storm: @daily.storm, uploader_id: @daily.uploader_id } }
    end

    assert_redirected_to daily_url(Daily.last)
  end

  test "should show daily" do
    get daily_url(@daily)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_url(@daily)
    assert_response :success
  end

  test "should update daily" do
    patch daily_url(@daily), params: { daily: { day: @daily.day, fog: @daily.fog, location_id: @daily.location_id, max: @daily.max, min: @daily.min, month: @daily.month, note: @daily.note, precipitation: @daily.precipitation, rain: @daily.rain, shower: @daily.shower, sleet: @daily.sleet, snow: @daily.snow, snow_cover: @daily.snow_cover, snow_shower: @daily.snow_shower, storm: @daily.storm, uploader_id: @daily.uploader_id } }
    assert_redirected_to daily_url(@daily)
  end

  test "should destroy daily" do
    assert_difference('Daily.count', -1) do
      delete daily_url(@daily)
    end

    assert_redirected_to dailies_url
  end
end
