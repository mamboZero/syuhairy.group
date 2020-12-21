class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /agents
  # GET /agents.json
  def index
    @agents = current_user.agents
    @agent = Agent.all

    respond_to do |format|
      format.html
      format.csv { send_data @agent.generate_csv, filename: "Agents-#{Date.today}.csv"}
    end
  end

  # GET /agents/1
  # GET /agents/1.json
  def show

  end

  # GET /agents/new
  def new
    @agent = Agent.new
    @agent.spouses.build
    @agent.dependents.build
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  # POST /agents.json
  def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent, notice: 'Agent was successfully created.' }
        format.json { render :show, status: :created, location: @agent }
      else
        format.html { render :new }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agents/1
  # PATCH/PUT /agents/1.json
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent }
      else
        format.html { render :edit }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agent_params
      params.require(:agent).permit(:plan_id,:name,:contrib, :cert_num, :email, :ic_num, :mailing_address_1, :mailing_address_2, :employee_address_1, :employee_address_2, :race, :religion, :marital_status, :profession,:doc, :spouses_attributes => [:name,:status,:email,:ic_num,:race,:religion,:marital_status], :dependents_attributes => [:name, :ic_num, :phone_number])
    end
end
