require "application_system_test_case"

class CrewsTest < ApplicationSystemTestCase
  setup do
    @crew = crews(:one)
  end

  test "visiting the index" do
    visit crews_url
    assert_selector "h1", text: "Crews"
  end

  test "should create crew" do
    visit crews_url
    click_on "New crew"

    fill_in "Description", with: @crew.description
    fill_in "Hold", with: @crew.hold
    fill_in "Name", with: @crew.name
    fill_in "Rep", with: @crew.rep
    fill_in "Reputation", with: @crew.reputation
    fill_in "Tier", with: @crew.tier
    fill_in "Type", with: @crew.type
    click_on "Create Crew"

    assert_text "Crew was successfully created"
    click_on "Back"
  end

  test "should update Crew" do
    visit crew_url(@crew)
    click_on "Edit this crew", match: :first

    fill_in "Description", with: @crew.description
    fill_in "Hold", with: @crew.hold
    fill_in "Name", with: @crew.name
    fill_in "Rep", with: @crew.rep
    fill_in "Reputation", with: @crew.reputation
    fill_in "Tier", with: @crew.tier
    fill_in "Type", with: @crew.type
    click_on "Update Crew"

    assert_text "Crew was successfully updated"
    click_on "Back"
  end

  test "should destroy Crew" do
    visit crew_url(@crew)
    click_on "Destroy this crew", match: :first

    assert_text "Crew was successfully destroyed"
  end
end
