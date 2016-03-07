class AccntMsController < ApplicationController
  before_action :set_accnt_m, only: [:show, :edit, :update, :destroy]
  
  def index
    @search_form = AccntMs::AccntMSearchForm.new(params[:search])
    @accnt_ms = AccntM.all
  end

  def show
  end

  def new
    @accnt_m = AccntM.new
    # @accnt_staff_ms = @accnt_m.accnt_staff_ms.build
    # @accnt_type_1 = CodeM.where("code_name = ?", "ACCNT_TYPE_1").order(:sort_order)
    # @country_ms = CountryM.all
    # @prefecture_ms = PrefectureM.all
  end

  def edit
  end

  def create
    @accnt_m = AccntM.new(accnt_m_params)

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
      @accnt_m = accnt_m.find(params[:id])
    end

    def accnt_m_params
      params.require(:accnt_m).permit(:accnt_cd, :accnt_type_1, :accnt_type_2, :com_ind, :accnt_m_name, :accnt_m_name_e, :country_cd, :zip, :prefecture_no, :city, :area, :bld, :print_address, :print_address_e, :tel, :email, :fax, :memo, :rgstr_usr, :last_upd_usr )
    end
end
