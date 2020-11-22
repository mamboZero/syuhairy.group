require "application_system_test_case"

class AgentsTest < ApplicationSystemTestCase
  setup do
    @agent = agents(:one)
  end

  test "visiting the index" do
    visit agents_url
    assert_selector "h1", text: "Agents"
  end

  test "creating a Agent" do
    visit agents_url
    click_on "New Agent"

    fill_in "Cert num", with: @agent.cert_num
    fill_in "Email", with: @agent.email
    fill_in "Employee address 1", with: @agent.employee_address_1
    fill_in "Employee address 2", with: @agent.employee_address_2
    fill_in "Ic num", with: @agent.ic_num
    fill_in "Mailing address 1", with: @agent.mailing_address_1
    fill_in "Mailing address 2", with: @agent.mailing_address_2
    fill_in "Marital status", with: @agent.marital_status
    fill_in "Name", with: @agent.name
    fill_in "Pdf agent", with: @agent.pdf_agent
    fill_in "Profession", with: @agent.profession
    fill_in "Race", with: @agent.race
    fill_in "Religion", with: @agent.religion
    click_on "Create Agent"

    assert_text "Agent was successfully created"
    click_on "Back"
  end

  test "updating a Agent" do
    visit agents_url
    click_on "Edit", match: :first

    fill_in "Cert num", with: @agent.cert_num
    fill_in "Email", with: @agent.email
    fill_in "Employee address 1", with: @agent.employee_address_1
    fill_in "Employee address 2", with: @agent.employee_address_2
    fill_in "Ic num", with: @agent.ic_num
    fill_in "Mailing address 1", with: @agent.mailing_address_1
    fill_in "Mailing address 2", with: @agent.mailing_address_2
    fill_in "Marital status", with: @agent.marital_status
    fill_in "Name", with: @agent.name
    fill_in "Pdf agent", with: @agent.pdf_agent
    fill_in "Profession", with: @agent.profession
    fill_in "Race", with: @agent.race
    fill_in "Religion", with: @agent.religion
    click_on "Update Agent"

    assert_text "Agent was successfully updated"
    click_on "Back"
  end

  test "destroying a Agent" do
    visit agents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agent was successfully destroyed"
  end
end
