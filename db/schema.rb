# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160315113149) do

  create_table "accnt_ms", id: false, force: :cascade do |t|
    t.string   "accnt_cd",        limit: 30,   null: false
    t.string   "accnt_type_1",    limit: 1
    t.string   "accnt_type_2",    limit: 1
    t.string   "com_ind",         limit: 1
    t.string   "accnt_name",      limit: 50
    t.string   "accnt_name_e",    limit: 50
    t.string   "country_cd",      limit: 4
    t.string   "zip",             limit: 10
    t.string   "prefecture_no",   limit: 2
    t.string   "city",            limit: 20
    t.string   "area",            limit: 20
    t.string   "bld",             limit: 50
    t.string   "print_address",   limit: 100
    t.string   "print_address_e", limit: 100
    t.string   "tel",             limit: 20
    t.string   "email",           limit: 50
    t.string   "fax",             limit: 20
    t.string   "memo",            limit: 2000
    t.string   "rgstr_usr",       limit: 16
    t.string   "lst_upd_usr",     limit: 16
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "accnt_staff_ms", force: :cascade do |t|
    t.string   "staff_id",         limit: 40
    t.string   "accnt_cd",         limit: 50
    t.string   "dept_name",        limit: 50
    t.string   "dept_name_e",      limit: 50
    t.string   "staff_name",       limit: 50
    t.string   "staff_name_e",     limit: 50
    t.string   "country_cd",       limit: 4
    t.string   "zip",              limit: 10
    t.string   "prefecture_no",    limit: 2
    t.string   "city",             limit: 20
    t.string   "area",             limit: 20
    t.string   "bld",              limit: 50
    t.string   "print_address",    limit: 100
    t.string   "print_address_e",  limit: 100
    t.string   "tel",              limit: 20
    t.string   "email",            limit: 50
    t.string   "fax",              limit: 20
    t.string   "accnt_cd_billing", limit: 30
    t.integer  "staff_id_billing", limit: 4
    t.integer  "accnt_id",         limit: 4
    t.integer  "rgstr_usr",        limit: 4
    t.integer  "lst_upd_usr",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "code_ms", force: :cascade do |t|
    t.string   "list_name",    limit: 50
    t.string   "code",         limit: 3
    t.string   "sort_order",   limit: 3
    t.string   "list_name_j",  limit: 50
    t.string   "annotation",   limit: 100
    t.string   "annotation_j", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_ms", force: :cascade do |t|
    t.string   "country_cd",     limit: 4
    t.string   "country_name",   limit: 50
    t.string   "country_name_e", limit: 50
    t.string   "currency_cd",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpn_m_sales_cntcts", primary_key: "cpn_id", force: :cascade do |t|
    t.string  "accnt_cd_sales_cntct", limit: 30, null: false
    t.integer "cpn_m_id",             limit: 4
  end

  create_table "cpn_m_total_sales_dscnts", primary_key: "cpn_id", force: :cascade do |t|
    t.integer "sales_range_no",        limit: 4,                          default: 0, null: false, unsigned: true
    t.decimal "sales_range_min_value",           precision: 20, scale: 2,             null: false
    t.decimal "dscnt_value",                     precision: 20, scale: 2
    t.decimal "dscnt_rate",                      precision: 5,  scale: 2
    t.integer "cpn_m_id",              limit: 4
  end

  create_table "cpn_ms", primary_key: "cpn_id", force: :cascade do |t|
    t.string   "cpn_cd",          limit: 30,                                        null: false
    t.string   "cpn_st",          limit: 1,                                         null: false
    t.string   "cpn_title",       limit: 2000,                                      null: false
    t.string   "cpn_cls",         limit: 1,                                         null: false
    t.string   "cpn_discnt_type", limit: 1,                                         null: false
    t.string   "vndr_cpn",        limit: 1,                                         null: false
    t.integer  "use_limit",       limit: 4,                             default: 0, null: false, unsigned: true
    t.datetime "start_dt",                                                          null: false
    t.datetime "expiration_dt"
    t.decimal  "dscnt_value",                  precision: 20, scale: 2
    t.decimal  "dscnt_rate",                   precision: 5,  scale: 2
    t.string   "trgt_prd_cndtn",  limit: 2000
    t.string   "excld_prd_cndtn", limit: 2000
    t.string   "memo",            limit: 2000
    t.integer  "cpn_m_id",        limit: 4
  end

  create_table "currency_ms", force: :cascade do |t|
    t.string   "currency_cd",     limit: 4
    t.string   "currency_sign",   limit: 2
    t.string   "currency_name",   limit: 50
    t.string   "currency_name_e", limit: 50
    t.string   "currency_unit",   limit: 20
    t.string   "currency_unit_e", limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dstrbtr_cstmrs", force: :cascade do |t|
    t.string   "dstrbtr_cd", limit: 255
    t.string   "cstmr_cd",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pos", force: :cascade do |t|
    t.string   "po_no",               limit: 30,                                        null: false
    t.string   "accnt_cd_vndr",       limit: 30,                                        null: false
    t.string   "po_type",             limit: 1,                                         null: false
    t.string   "po_prd_type",         limit: 1,                                         null: false
    t.string   "emp_no_po",           limit: 30,                                        null: false
    t.datetime "po_create_date"
    t.datetime "po_date"
    t.string   "po_st",               limit: 1
    t.string   "so_no",               limit: 30
    t.datetime "so_date"
    t.datetime "so_pay_cnfrmtn_date"
    t.string   "currency_cd",         limit: 4,                                         null: false
    t.decimal  "ttl_amnt_excld_tax",               precision: 20, scale: 2
    t.decimal  "tax_rate",                         precision: 5,  scale: 2
    t.decimal  "tax",                              precision: 20, scale: 2
    t.decimal  "dlvry_fee",                        precision: 20, scale: 2
    t.decimal  "ttl_amnt_incld_tax",               precision: 20, scale: 2
    t.string   "pay_mthd",            limit: 1
    t.datetime "pay_due_date"
    t.string   "prd_dlvry_type",      limit: 1
    t.string   "dlvry_term",          limit: 100
    t.datetime "dlvry_end_date"
    t.string   "dlvry_atntn",         limit: 50
    t.string   "dlvry_adrs",          limit: 2000
    t.string   "dlvry_tel",           limit: 20
    t.string   "dlvry_email",         limit: 50
    t.string   "web_po_optn",         limit: 2000
    t.string   "web_po_pay_mthd",     limit: 1
    t.integer  "web_po_card_used",    limit: 4,                             default: 0,              unsigned: true
    t.datetime "rgstr_dt"
    t.integer  "rgstr_usr",           limit: 4,                             default: 0,              unsigned: true
    t.datetime "lst_upd_dt"
    t.integer  "lst_upd_usr",         limit: 4,                             default: 0,              unsigned: true
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  create_table "prd_ms", primary_key: "sku", force: :cascade do |t|
    t.string   "sku_dvlpr",                  limit: 30
    t.string   "sku_source_prd",             limit: 30
    t.string   "prd_name",                   limit: 50
    t.string   "prd_name_subtitle",          limit: 50
    t.string   "prd_dvlpr_org_name",         limit: 50
    t.string   "prd_ctgry_cd",               limit: 30,               null: false
    t.string   "prd_type",                   limit: 1
    t.string   "sp_prd_type",                limit: 1
    t.string   "set_prd_f",                  limit: 1
    t.string   "set_prd_type",               limit: 1
    t.string   "sale_f",                     limit: 1
    t.string   "rcvng_plcnt_prd_f",          limit: 1
    t.string   "dlvry_ld_time",              limit: 100
    t.string   "db_prd_dlvry_mthd",          limit: 2000
    t.string   "lic_type",                   limit: 1
    t.integer  "lic_from",                   limit: 4,    default: 0, null: false, unsigned: true
    t.integer  "lic_to",                     limit: 4,    default: 0, null: false, unsigned: true
    t.string   "dstrbtr_disp_f",             limit: 1
    t.string   "prd_st",                     limit: 1
    t.string   "acdmc_lic_f",                limit: 1
    t.string   "prd_dlvry_mthd",             limit: 2000
    t.string   "prd_desc",                   limit: 2000
    t.string   "prd_note",                   limit: 2000
    t.string   "prd_notice",                 limit: 2000
    t.string   "prd_other_info",             limit: 2000
    t.string   "url_prd",                    limit: 500
    t.string   "url_install_guid",           limit: 500
    t.string   "url_lic_auth_guid",          limit: 500
    t.string   "url_installer",              limit: 500
    t.string   "url_prd_image",              limit: 500
    t.string   "url_dl",                     limit: 500
    t.string   "memo",                       limit: 2000
    t.integer  "subscription_lic_term",      limit: 4,    default: 0, null: false, unsigned: true
    t.string   "subscription_lic_term_unit", limit: 1
    t.integer  "mnt_lic_term",               limit: 4,    default: 0, null: false, unsigned: true
    t.string   "mnt_lic_term_unit",          limit: 1
    t.string   "accnt_cd_dvlpr",             limit: 30,               null: false
    t.string   "accnt_cd_vndr",              limit: 30,               null: false
    t.datetime "rgstr_dt"
    t.integer  "rgstr_usr",                  limit: 4,    default: 0, null: false, unsigned: true
    t.datetime "lst_upd_dt"
    t.integer  "lst_upd_usr",                limit: 4,    default: 0, null: false, unsigned: true
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "prefecture_ms", force: :cascade do |t|
    t.string   "prefecture_no",   limit: 2
    t.string   "prefecture_name", limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_accnt_ms", force: :cascade do |t|
    t.string   "sales_accnt_cd",           limit: 255
    t.string   "sales_accnt_st",           limit: 255
    t.string   "sales_accnt_type",         limit: 255
    t.string   "cstmr_type",               limit: 255
    t.string   "cmpny_name",               limit: 255
    t.string   "cmpny_name_e",             limit: 255
    t.string   "dept_name",                limit: 255
    t.string   "dept_name_e",              limit: 255
    t.string   "person_name",              limit: 255
    t.string   "person_name_e",            limit: 255
    t.string   "emp_no_sales",             limit: 255
    t.string   "country_cd",               limit: 255
    t.string   "zip",                      limit: 255
    t.string   "prefecture_no",            limit: 255
    t.string   "city",                     limit: 255
    t.string   "area",                     limit: 255
    t.string   "bld",                      limit: 255
    t.string   "print_address",            limit: 255
    t.string   "print_address_e",          limit: 255
    t.string   "tel",                      limit: 255
    t.string   "fax",                      limit: 255
    t.string   "email",                    limit: 255
    t.string   "bill_close_date",          limit: 255
    t.integer  "pay_date",                 limit: 4
    t.string   "news_dlvry_f",             limit: 255
    t.date     "rgstrtn_date"
    t.string   "pttrn_cd",                 limit: 255
    t.date     "cntrct_start_date"
    t.date     "cntrct_renewal_date"
    t.date     "cntrct_next_renewal_date"
    t.date     "cntrct_end_date"
    t.string   "memo",                     limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "serial_ms", force: :cascade do |t|
    t.integer  "serial_id",                  limit: 4,    null: false, unsigned: true
    t.string   "sku",                        limit: 30,   null: false
    t.string   "serial_type",                limit: 1,    null: false
    t.string   "cnsgnmnt_serial_st",         limit: 1
    t.date     "cnsgnmnt_serial_store_date"
    t.string   "po_no",                      limit: 30,   null: false
    t.string   "os_type",                    limit: 1
    t.string   "serial_no_1",                limit: 30,   null: false
    t.string   "serial_no_2",                limit: 30
    t.string   "serial_no_3",                limit: 30
    t.string   "web_up_serial",              limit: 2000
    t.string   "dl_file_name",               limit: 500
    t.string   "dl_pass_cd",                 limit: 30
    t.string   "nfr_f",                      limit: 1,    null: false
    t.string   "nfr_rsn",                    limit: 2000
    t.string   "accnt_cd_cstmr",             limit: 30,   null: false
    t.string   "so_no",                      limit: 30
    t.integer  "so_item_no",                 limit: 4,                 unsigned: true
    t.string   "sku_serial_assngd",          limit: 30
    t.string   "use_type",                   limit: 1
    t.string   "upgrd_serial_f",             limit: 1,    null: false
    t.integer  "upgrd_pre_prd_serial_no",    limit: 4,                 unsigned: true
    t.string   "accnt_cd_sales_cntnt",       limit: 30,   null: false
    t.string   "dlvry_no",                   limit: 30,   null: false
    t.datetime "rgstr_dt"
    t.integer  "rgstr_usr",                  limit: 4,                 unsigned: true
    t.datetime "lst_upd_dt"
    t.integer  "lst_upd_usr",                limit: 4,                 unsigned: true
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "sku",                limit: 30,             null: false
    t.string   "stock_prd_type",     limit: 1,              null: false
    t.integer  "rsrvd_qty",          limit: 4,  default: 0, null: false, unsigned: true
    t.integer  "free_qty",           limit: 4,  default: 0, null: false, unsigned: true
    t.integer  "ttl_qty",            limit: 4,  default: 0, null: false, unsigned: true
    t.integer  "strndrd_stock_qty",  limit: 4,  default: 0,              unsigned: true
    t.integer  "cnsgmnt_serial_qty", limit: 4,  default: 0,              unsigned: true
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "sys_settings", primary_key: "company_name", force: :cascade do |t|
    t.string "company_name_e", limit: 50
  end

end
