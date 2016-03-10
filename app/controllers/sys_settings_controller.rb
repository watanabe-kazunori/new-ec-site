class SysSettingsController < ApplicationController
  before_action :set_sys_setting, only: [:show, :edit, :update, :destroy]

  # GET /sys_settings
  # GET /sys_settings.json
  def index
    @sys_settings = SysSetting.all
  end

  # GET /sys_settings/1
  # GET /sys_settings/1.json
  def show
  end

  # GET /sys_settings/new
  def new
    @sys_setting = SysSetting.new
  end

  # GET /sys_settings/1/edit
  def edit
  end

  # POST /sys_settings
  # POST /sys_settings.json
  def create
    @sys_setting = SysSetting.new(sys_setting_params)

    respond_to do |format|
      if @sys_setting.save
        format.html { redirect_to @sys_setting, notice: 'Sys setting was successfully created.' }
        format.json { render :show, status: :created, location: @sys_setting }
      else
        format.html { render :new }
        format.json { render json: @sys_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sys_settings/1
  # PATCH/PUT /sys_settings/1.json
  def update
    respond_to do |format|
      if @sys_setting.update(sys_setting_params)
        format.html { redirect_to @sys_setting, notice: 'Sys setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sys_setting }
      else
        format.html { render :edit }
        format.json { render json: @sys_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_settings/1
  # DELETE /sys_settings/1.json
  def destroy
    @sys_setting.destroy
    respond_to do |format|
      format.html { redirect_to sys_settings_url, notice: 'Sys setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sys_setting
      @sys_setting = SysSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sys_setting_params
      params.require(:sys_setting).permit(:company_name, :company_name_e)
    end
end
