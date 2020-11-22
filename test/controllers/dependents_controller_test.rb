require 'test_helper'

class DependentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependent = dependents(:one)
  end

  test "should get index" do
    get dependents_url
    assert_response :success
  end

  test "should get new" do
    get new_dependent_url
    assert_response :success
  end

  test "should create dependent" do
    assert_difference('Dependent.count') do
      post dependents_url, params: { dependent: { agent_id: @dependent.agent_id, contribution_value: @dependent.contribution_value, height: @dependent.height, ic_num: @dependent.ic_num, mail_add_1: @dependent.mail_add_1, mail_add_2: @dependent.mail_add_2, marital_status: @dependent.marital_status, name: @dependent.name, phone_number: @dependent.phone_number, profession: @dependent.profession, race: @dependent.race, religion: @dependent.religion, weight: @dependent.weight } }
    end

    assert_redirected_to dependent_url(Dependent.last)
  end

  test "should show dependent" do
    get dependent_url(@dependent)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependent_url(@dependent)
    assert_response :success
  end

  test "should update dependent" do
    patch dependent_url(@dependent), params: { dependent: { agent_id: @dependent.agent_id, contribution_value: @dependent.contribution_value, height: @dependent.height, ic_num: @dependent.ic_num, mail_add_1: @dependent.mail_add_1, mail_add_2: @dependent.mail_add_2, marital_status: @dependent.marital_status, name: @dependent.name, phone_number: @dependent.phone_number, profession: @dependent.profession, race: @dependent.race, religion: @dependent.religion, weight: @dependent.weight } }
    assert_redirected_to dependent_url(@dependent)
  end

  test "should destroy dependent" do
    assert_difference('Dependent.count', -1) do
      delete dependent_url(@dependent)
    end

    assert_redirected_to dependents_url
  end
end
