require "application_system_test_case"

class ClocksTest < ApplicationSystemTestCase
  setup do
    @clock = clocks(:one)
  end

  test "visiting the index" do
    visit clocks_url
    assert_selector "h1", text: "Clocks"
  end

  test "should create clock" do
    visit clocks_url
    click_on "New clock"

    fill_in "Description", with: @clock.description
    fill_in "Marked", with: @clock.marked
    fill_in "Name", with: @clock.name
    fill_in "Sections", with: @clock.sections
    click_on "Create Clock"

    assert_text "Clock was successfully created"
    click_on "Back"
  end

  test "should update Clock" do
    visit clock_url(@clock)
    click_on "Edit this clock", match: :first

    fill_in "Description", with: @clock.description
    fill_in "Marked", with: @clock.marked
    fill_in "Name", with: @clock.name
    fill_in "Sections", with: @clock.sections
    click_on "Update Clock"

    assert_text "Clock was successfully updated"
    click_on "Back"
  end

  test "should destroy Clock" do
    visit clock_url(@clock)
    click_on "Destroy this clock", match: :first

    assert_text "Clock was successfully destroyed"
  end
end
