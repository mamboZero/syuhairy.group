require "application_system_test_case"

class SpousesTest < ApplicationSystemTestCase
  setup do
    @spouse = spouses(:one)
  end

  test "visiting the index" do
    visit spouses_url
    assert_selector "h1", text: "Spouses"
  end

  test "creating a Spouse" do
    visit spouses_url
    click_on "New Spouse"

    fill_in "Email", with: @spouse.email
    fill_in "Employee phone number", with: @spouse.employee_phone_number
    fill_in "Gross income", with: @spouse.gross_income
    fill_in "Height", with: @spouse.height
    fill_in "Hp number", with: @spouse.hp_number
    fill_in "Ic num", with: @spouse.ic_num
    fill_in "Mail add 1", with: @spouse.mail_add_1
    fill_in "Mail add 2", with: @spouse.mail_add_2
    fill_in "Marital status", with: @spouse.marital_status
    fill_in "Name", with: @spouse.name
    fill_in "Profession", with: @spouse.profession
    fill_in "Race", with: @spouse.race
    fill_in "Religion", with: @spouse.religion
    fill_in "Status", with: @spouse.status
    fill_in "Weight", with: @spouse.weight
    click_on "Create Spouse"

    assert_text "Spouse was successfully created"
    click_on "Back"
  end

  test "updating a Spouse" do
    visit spouses_url
    click_on "Edit", match: :first

    fill_in "Email", with: @spouse.email
    fill_in "Employee phone number", with: @spouse.employee_phone_number
    fill_in "Gross income", with: @spouse.gross_income
    fill_in "Height", with: @spouse.height
    fill_in "Hp number", with: @spouse.hp_number
    fill_in "Ic num", with: @spouse.ic_num
    fill_in "Mail add 1", with: @spouse.mail_add_1
    fill_in "Mail add 2", with: @spouse.mail_add_2
    fill_in "Marital status", with: @spouse.marital_status
    fill_in "Name", with: @spouse.name
    fill_in "Profession", with: @spouse.profession
    fill_in "Race", with: @spouse.race
    fill_in "Religion", with: @spouse.religion
    fill_in "Status", with: @spouse.status
    fill_in "Weight", with: @spouse.weight
    click_on "Update Spouse"

    assert_text "Spouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Spouse" do
    visit spouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spouse was successfully destroyed"
  end
end
