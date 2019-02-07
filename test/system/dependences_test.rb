require "application_system_test_case"

class DependencesTest < ApplicationSystemTestCase
  setup do
    @dependence = dependences(:one)
  end

  test "visiting the index" do
    visit dependences_url
    assert_selector "h1", text: "Dependences"
  end

  test "creating a Dependence" do
    visit dependences_url
    click_on "New Dependence"

    fill_in "Description", with: @dependence.description
    fill_in "Name", with: @dependence.name
    fill_in "State", with: @dependence.state
    click_on "Create Dependence"

    assert_text "Dependence was successfully created"
    click_on "Back"
  end

  test "updating a Dependence" do
    visit dependences_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dependence.description
    fill_in "Name", with: @dependence.name
    fill_in "State", with: @dependence.state
    click_on "Update Dependence"

    assert_text "Dependence was successfully updated"
    click_on "Back"
  end

  test "destroying a Dependence" do
    visit dependences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dependence was successfully destroyed"
  end
end
