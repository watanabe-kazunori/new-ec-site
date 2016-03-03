require 'test_helper'

class PrdMsControllerTest < ActionController::TestCase
  setup do
    @prd_m = prd_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m" do
    assert_difference('PrdM.count') do
      post :create, prd_m: { accnt_cd_dvlpr: @prd_m.accnt_cd_dvlpr, accnt_cd_vndr: @prd_m.accnt_cd_vndr, acdmc_lic_f: @prd_m.acdmc_lic_f, db_prd_dlvry_mthd: @prd_m.db_prd_dlvry_mthd, dlvry_ld_time: @prd_m.dlvry_ld_time, dstrbtr_disp_f: @prd_m.dstrbtr_disp_f, lic_from: @prd_m.lic_from, lic_to: @prd_m.lic_to, lic_type: @prd_m.lic_type, lst_upd_dt: @prd_m.lst_upd_dt, lst_upd_usr: @prd_m.lst_upd_usr, memo: @prd_m.memo, mnt_lic_term: @prd_m.mnt_lic_term, mnt_lic_term_unit: @prd_m.mnt_lic_term_unit, prd_ctgry_cd: @prd_m.prd_ctgry_cd, prd_desc: @prd_m.prd_desc, prd_dlvry_mthd: @prd_m.prd_dlvry_mthd, prd_dvlpr_org_name: @prd_m.prd_dvlpr_org_name, prd_name: @prd_m.prd_name, prd_name_subtitle: @prd_m.prd_name_subtitle, prd_note: @prd_m.prd_note, prd_notice: @prd_m.prd_notice, prd_other_info: @prd_m.prd_other_info, prd_st: @prd_m.prd_st, prd_type: @prd_m.prd_type, rcvng_plcnt_prd_f: @prd_m.rcvng_plcnt_prd_f, rgstr_dt: @prd_m.rgstr_dt, rgstr_usr: @prd_m.rgstr_usr, sale_f: @prd_m.sale_f, set_prd_f: @prd_m.set_prd_f, set_prd_type: @prd_m.set_prd_type, sku: @prd_m.sku, sku_dvlpr: @prd_m.sku_dvlpr, sku_source_prd: @prd_m.sku_source_prd, sp_prd_type: @prd_m.sp_prd_type, subscription_lic_term: @prd_m.subscription_lic_term, subscription_lic_term_unit: @prd_m.subscription_lic_term_unit, url_dl: @prd_m.url_dl, url_install_guid: @prd_m.url_install_guid, url_installer: @prd_m.url_installer, url_lic_auth_guid: @prd_m.url_lic_auth_guid, url_prd: @prd_m.url_prd, url_prd_image: @prd_m.url_prd_image }
    end

    assert_redirected_to prd_m_path(assigns(:prd_m))
  end

  test "should show prd_m" do
    get :show, id: @prd_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m
    assert_response :success
  end

  test "should update prd_m" do
    patch :update, id: @prd_m, prd_m: { accnt_cd_dvlpr: @prd_m.accnt_cd_dvlpr, accnt_cd_vndr: @prd_m.accnt_cd_vndr, acdmc_lic_f: @prd_m.acdmc_lic_f, db_prd_dlvry_mthd: @prd_m.db_prd_dlvry_mthd, dlvry_ld_time: @prd_m.dlvry_ld_time, dstrbtr_disp_f: @prd_m.dstrbtr_disp_f, lic_from: @prd_m.lic_from, lic_to: @prd_m.lic_to, lic_type: @prd_m.lic_type, lst_upd_dt: @prd_m.lst_upd_dt, lst_upd_usr: @prd_m.lst_upd_usr, memo: @prd_m.memo, mnt_lic_term: @prd_m.mnt_lic_term, mnt_lic_term_unit: @prd_m.mnt_lic_term_unit, prd_ctgry_cd: @prd_m.prd_ctgry_cd, prd_desc: @prd_m.prd_desc, prd_dlvry_mthd: @prd_m.prd_dlvry_mthd, prd_dvlpr_org_name: @prd_m.prd_dvlpr_org_name, prd_name: @prd_m.prd_name, prd_name_subtitle: @prd_m.prd_name_subtitle, prd_note: @prd_m.prd_note, prd_notice: @prd_m.prd_notice, prd_other_info: @prd_m.prd_other_info, prd_st: @prd_m.prd_st, prd_type: @prd_m.prd_type, rcvng_plcnt_prd_f: @prd_m.rcvng_plcnt_prd_f, rgstr_dt: @prd_m.rgstr_dt, rgstr_usr: @prd_m.rgstr_usr, sale_f: @prd_m.sale_f, set_prd_f: @prd_m.set_prd_f, set_prd_type: @prd_m.set_prd_type, sku: @prd_m.sku, sku_dvlpr: @prd_m.sku_dvlpr, sku_source_prd: @prd_m.sku_source_prd, sp_prd_type: @prd_m.sp_prd_type, subscription_lic_term: @prd_m.subscription_lic_term, subscription_lic_term_unit: @prd_m.subscription_lic_term_unit, url_dl: @prd_m.url_dl, url_install_guid: @prd_m.url_install_guid, url_installer: @prd_m.url_installer, url_lic_auth_guid: @prd_m.url_lic_auth_guid, url_prd: @prd_m.url_prd, url_prd_image: @prd_m.url_prd_image }
    assert_redirected_to prd_m_path(assigns(:prd_m))
  end

  test "should destroy prd_m" do
    assert_difference('PrdM.count', -1) do
      delete :destroy, id: @prd_m
    end

    assert_redirected_to prd_ms_path
  end
end
