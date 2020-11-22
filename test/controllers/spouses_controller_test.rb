require 'test_helper'

class SpousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spouse = spouses(:one)
  end

  test "should get index" do
    get spouses_url
    assert_response :success
  end

  test "should get new" do
    get new_spouse_url
    assert_response :success
  end

  test "should create spouse" do
    assert_difference('Spouse.count') do
      post spouses_url, params: { spouse: { email: @spouse.email, employee_phone_number: @spouse.employee_phone_number, gross_income: @spouse.gross_income, height: @spouse.height, hp_number: @spouse.hp_number, ic_num: @spouse.ic_num, mail_add_1: @spouse.mail_add_1, mail_add_2: @spouse.mail_add_2, marital_status: @spouse.marital_status, name: @spouse.name, profession: @spouse.profession, race: @spouse.race, religion: @spouse.religion, status: @spouse.status, weight: @spouse.weight } }
    end

    assert_redirected_to spouse_url(Spouse.last)
  end

  test "should show spouse" do
    get spouse_url(@spouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_spouse_url(@spouse)
    assert_response :success
  end

  test "should update spouse" do
    patch spouse_url(@spouse), params: { spouse: { email: @spouse.email, employee_phone_number: @spouse.employee_phone_number, gross_income: @spouse.gross_income, height: @spouse.height, hp_number: @spouse.hp_number, ic_num: @spouse.ic_num, mail_add_1: @spouse.mail_add_1, mail_add_2: @spouse.mail_add_2, marital_status: @spouse.marital_status, name: @spouse.name, profession: @spouse.profession, race: @spouse.race, religion: @spouse.religion, status: @spouse.status, weight: @spouse.weight } }
    assert_redirected_to spouse_url(@spouse)
  end

  test "should destroy spouse" do
    assert_difference('Spouse.count', -1) do
      delete spouse_url(@spouse)
    end

    assert_redirected_to spouses_url
  end
end
