class SpousesController < ApplicationController
  before_action :set_spouse, only: [:show, :edit, :update, :destroy]

  # GET /spouses
  # GET /spouses.json
  def index
    @spouses = Spouse.all
  end

  # GET /spouses/1
  # GET /spouses/1.json
  def show
  end

  # GET /spouses/new
  def new
    @spouse = Spouse.new
  end

  # GET /spouses/1/edit
  def edit
  end

  # POST /spouses
  # POST /spouses.json
  def create
    @spouse = Spouse.new(spouse_params)

    respond_to do |format|
      if @spouse.save
        format.html { redirect_to @spouse, notice: 'Spouse was successfully created.' }
        format.json { render :show, status: :created, location: @spouse }
      else
        format.html { render :new }
        format.json { render json: @spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spouses/1
  # PATCH/PUT /spouses/1.json
  def update
    respond_to do |format|
      if @spouse.update(spouse_params)
        format.html { redirect_to @spouse, notice: 'Spouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @spouse }
      else
        format.html { render :edit }
        format.json { render json: @spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spouses/1
  # DELETE /spouses/1.json
  def destroy
    @spouse.destroy
    respond_to do |format|
      format.html { redirect_to spouses_url, notice: 'Spouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spouse
      @spouse = Spouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spouse_params
      params.require(:spouse).permit(:status, :email, :name, :ic_num, :mail_add_1, :mail_add_2, :race, :religion, :marital_status, :profession, :height, :weight, :hp_number, :gross_income, :employee_phone_number)
    end
end
