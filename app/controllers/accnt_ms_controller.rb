class AccntMsController < ApplicationController
  before_action :set_accnt_m, only: [:show, :edit, :update, :destroy]
  
  def index
    @search = AccntM.search(params[:q])
    @accnt_ms = @search.result
    @accnt_ms = AccntM.page(params[:page]).per(10).order(:accnt_cd)
  end

  def show
    @accnt_type_1 = CodeM.where("list_name = ?", "ACCNT_TYPE_1").order(:sort_order)
    @accnt_type_2 = CodeM.where("list_name = ?", "ACCNT_TYPE_2").order(:sort_order)
    @country_ms = CountryM.all
    @prefecture_ms = PrefectureM.all
  end

  def new
    @accnt_m = AccntM.new
    accnt_staff_m = AccntStaffM.new
    @accnt_m.accnt_staff_ms << accnt_staff_m
    @accnt_type_1 = CodeM.where("list_name = ?", "ACCNT_TYPE_1").order(:sort_order)
    @accnt_type_2 = CodeM.where("list_name = ?", "ACCNT_TYPE_2").order(:sort_order)
    @country_ms = CountryM.all
    @prefecture_ms = PrefectureM.all
  end

  def edit
    @accnt_type_1 = CodeM.where("list_name = ?", "ACCNT_TYPE_1").order(:sort_order)
    @accnt_type_2 = CodeM.where("list_name = ?", "ACCNT_TYPE_2").order(:sort_order)
    @country_ms = CountryM.all
    @prefecture_ms = PrefectureM.all
  end

  def create
    @accnt_m = AccntM.create(accnt_m_params)
    respond_to do |format|
      if @accnt_m.save
        format.html { redirect_to @accnt_m, notice: '新規に取引先が作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @accnt_m.update(accnt_m_params)
        format.html { redirect_to @accnt_m, notice: '取引先が正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @accnt_m.destroy
    respond_to do |format|
      format.html { redirect_to accnt_ms_url, notice: '取引先が正常に削除されました。' }
    end
  end

  private
    def set_accnt_m
      @accnt_m = AccntM.find(params[:id])
    end

    def accnt_m_params
      params.require(:accnt_m).permit(
        :accnt_cd, :accnt_type_1, :accnt_type_2, :accnt_name, :accnt_name_e,
        :country_cd, :zip, :prefecture_no, :city, :area, :bld, :print_address,
        :print_address_e, :tel, :email, :fax, :memo,
        accnt_staff_ms_attributes: [:staff_id, :accnt_cd, :dept_name, :staff_name, :staff_name_e, :country_cd,
        :zip, :prefecture_no, :city, :area, :bld, :print_address, :print_address_e, :tel ])
  end
end
