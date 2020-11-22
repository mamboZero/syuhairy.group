require 'test_helper'

class AgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get agents_url
    assert_response :success
  end

  test "should get new" do
    get new_agent_url
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post agents_url, params: { agent: { cert_num: @agent.cert_num, email: @agent.email, employee_address_1: @agent.employee_address_1, employee_address_2: @agent.employee_address_2, ic_num: @agent.ic_num, mailing_address_1: @agent.mailing_address_1, mailing_address_2: @agent.mailing_address_2, marital_status: @agent.marital_status, name: @agent.name, pdf_agent: @agent.pdf_agent, profession: @agent.profession, race: @agent.race, religion: @agent.religion } }
    end

    assert_redirected_to agent_url(Agent.last)
  end

  test "should show agent" do
    get agent_url(@agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_agent_url(@agent)
    assert_response :success
  end

  test "should update agent" do
    patch agent_url(@agent), params: { agent: { cert_num: @agent.cert_num, email: @agent.email, employee_address_1: @agent.employee_address_1, employee_address_2: @agent.employee_address_2, ic_num: @agent.ic_num, mailing_address_1: @agent.mailing_address_1, mailing_address_2: @agent.mailing_address_2, marital_status: @agent.marital_status, name: @agent.name, pdf_agent: @agent.pdf_agent, profession: @agent.profession, race: @agent.race, religion: @agent.religion } }
    assert_redirected_to agent_url(@agent)
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete agent_url(@agent)
    end

    assert_redirected_to agents_url
  end
end
