class AccntStaffMsController < ApplicationController
  before_action :set_accnt_staff_m, only: [:show, :edit, :update, :destroy]

  # GET /accnt_staff_ms
  # GET /accnt_staff_ms.json
  def index
    @accnt_staff_ms = AccntStaffM.all
  end

  # GET /accnt_staff_ms/1
  # GET /accnt_staff_ms/1.json
  def show
  end

  # GET /accnt_staff_ms/new
  def new
    @accnt_staff_m = AccntStaffM.new
  end

  # GET /accnt_staff_ms/1/edit
  def edit
  end

  # POST /accnt_staff_ms
  # POST /accnt_staff_ms.json
  def create
    @accnt_staff_m = AccntStaffM.new(accnt_staff_m_params)

    respond_to do |format|
      if @accnt_staff_m.save
        format.html { redirect_to @accnt_staff_m, notice: 'Accnt staff m was successfully created.' }
        format.json { render :show, status: :created, location: @accnt_staff_m }
      else
        format.html { render :new }
        format.json { render json: @accnt_staff_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accnt_staff_ms/1
  # PATCH/PUT /accnt_staff_ms/1.json
  def update
    respond_to do |format|
      if @accnt_staff_m.update(accnt_staff_m_params)
        format.html { redirect_to @accnt_staff_m, notice: 'Accnt staff m was successfully updated.' }
        format.json { render :show, status: :ok, location: @accnt_staff_m }
      else
        format.html { render :edit }
        format.json { render json: @accnt_staff_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accnt_staff_ms/1
  # DELETE /accnt_staff_ms/1.json
  def destroy
    @accnt_staff_m.destroy
    respond_to do |format|
      format.html { redirect_to accnt_staff_ms_url, notice: 'Accnt staff m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accnt_staff_m
      @accnt_staff_m = AccntStaffM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accnt_staff_m_params
      params.fetch(:accnt_staff_m, {})
    end
end
