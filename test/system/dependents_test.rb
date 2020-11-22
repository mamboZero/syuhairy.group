require "application_system_test_case"

class DependentsTest < ApplicationSystemTestCase
  setup do
    @dependent = dependents(:one)
  end

  test "visiting the index" do
    visit dependents_url
    assert_selector "h1", text: "Dependents"
  end

  test "creating a Dependent" do
    visit dependents_url
    click_on "New Dependent"

    fill_in "Agent", with: @dependent.agent_id
    fill_in "Contribution value", with: @dependent.contribution_value
    fill_in "Height", with: @dependent.height
    fill_in "Ic num", with: @dependent.ic_num
    fill_in "Mail add 1", with: @dependent.mail_add_1
    fill_in "Mail add 2", with: @dependent.mail_add_2
    fill_in "Marital status", with: @dependent.marital_status
    fill_in "Name", with: @dependent.name
    fill_in "Phone number", with: @dependent.phone_number
    fill_in "Profession", with: @dependent.profession
    fill_in "Race", with: @dependent.race
    fill_in "Religion", with: @dependent.religion
    fill_in "Weight", with: @dependent.weight
    click_on "Create Dependent"

    assert_text "Dependent was successfully created"
    click_on "Back"
  end

  test "updating a Dependent" do
    visit dependents_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @dependent.agent_id
    fill_in "Contribution value", with: @dependent.contribution_value
    fill_in "Height", with: @dependent.height
    fill_in "Ic num", with: @dependent.ic_num
    fill_in "Mail add 1", with: @dependent.mail_add_1
    fill_in "Mail add 2", with: @dependent.mail_add_2
    fill_in "Marital status", with: @dependent.marital_status
    fill_in "Name", with: @dependent.name
    fill_in "Phone number", with: @dependent.phone_number
    fill_in "Profession", with: @dependent.profession
    fill_in "Race", with: @dependent.race
    fill_in "Religion", with: @dependent.religion
    fill_in "Weight", with: @dependent.weight
    click_on "Update Dependent"

    assert_text "Dependent was successfully updated"
    click_on "Back"
  end

  test "destroying a Dependent" do
    visit dependents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dependent was successfully destroyed"
  end
end
