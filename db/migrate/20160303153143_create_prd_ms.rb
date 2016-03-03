class CreatePrdMs < ActiveRecord::Migration
  def change
    create_table :prd_ms, id: false do |t|
      t.column :sku, :string, :limit => 30, :null => false
      t.column :sku_dvlpr, :string, :limit => 30
      t.column :sku_source_prd, :string, :limit => 30
      t.column :prd_name, :string, :limit => 50
      t.column :prd_name_subtitle, :string, :limit => 50
      t.column :prd_dvlpr_org_name, :string, :limit => 50
      t.column :prd_ctgry_cd, :string, :limit => 30, :null => false
      t.column :prd_type, :string, :limit => 1
      t.column :sp_prd_type, :string, :limit => 1
      t.column :set_prd_f, :string, :limit => 1
      t.column :set_prd_type, :string, :limit => 1
      t.column :sale_f, :string, :limit => 1
      t.column :rcvng_plcnt_prd_f, :string, :limit => 1
      t.column :dlvry_ld_time, :string, :limit => 100
      t.column :db_prd_dlvry_mthd, :string, :limit => 2000
      t.column :lic_type, :string, :limit => 1
      t.column :lic_from, :integer, unsigned: true, :default =>0, :null => false
      t.column :lic_to, :integer, unsigned: true, :default =>0, :null => false
      t.column :dstrbtr_disp_f, :string, :limit => 1
      t.column :prd_st, :string, :limit => 1
      t.column :acdmc_lic_f, :string, :limit => 1
      t.column :prd_dlvry_mthd, :string, :limit => 2000
      t.column :prd_desc, :string, :limit => 2000
      t.column :prd_note, :string, :limit => 2000
      t.column :prd_notice, :string, :limit => 2000
      t.column :prd_other_info, :string, :limit => 2000
      t.column :url_prd, :string, :limit => 500
      t.column :url_install_guid, :string, :limit => 500
      t.column :url_lic_auth_guid, :string, :limit => 500
      t.column :url_installer, :string, :limit => 500
      t.column :url_prd_image, :string, :limit => 500
      t.column :url_dl, :string, :limit => 500
      t.column :memo, :string, :limit => 2000
      t.column :subscription_lic_term, :integer, unsigned: true, :default =>0, :null => false
      t.column :subscription_lic_term_unit, :string, :limit => 1
      t.column :mnt_lic_term, :integer, unsigned: true, :default =>0, :null => false
      t.column :mnt_lic_term_unit, :string, :limit => 1
      t.column :accnt_cd_dvlpr, :string, :limit => 30, :null => false
      t.column :accnt_cd_vndr, :string, :limit => 30, :null => false
      t.column :rgstr_dt, :datetime
      t.column :rgstr_usr, :integer, unsigned: true, :default =>0, :null => false
      t.column :lst_upd_dt, :datetime
      t.column :lst_upd_usr, :integer, unsigned: true, :default =>0, :null => false

      t.timestamps null: false
    end
    execute "ALTER TABLE prd_ms ADD PRIMARY KEY (SKU);"   
  end
end
