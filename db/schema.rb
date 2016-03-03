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

ActiveRecord::Schema.define(version: 20160303153143) do

  create_table "cpn_m_sales_cntcts", force: :cascade do |t|
    t.integer  "cpn_id",               limit: 4,  null: false, unsigned: true
    t.string   "accnt_cd_sales_cntct", limit: 30, null: false
    t.integer  "cpn_m_id",             limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "cpn_m_total_sales_dscnts", force: :cascade do |t|
    t.integer  "cpn_id",                limit: 4,                          default: 0, null: false, unsigned: true
    t.integer  "sales_range_no",        limit: 4,                          default: 0, null: false, unsigned: true
    t.decimal  "sales_range_min_value",           precision: 20, scale: 2,             null: false
    t.decimal  "dscnt_value",                     precision: 20, scale: 2
    t.decimal  "dscnt_rate",                      precision: 5,  scale: 2
    t.integer  "cpn_m_id",              limit: 4
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  create_table "cpn_ms", force: :cascade do |t|
    t.integer  "cpn_id",          limit: 4,                                         null: false
    t.string   "cpn_cd",          limit: 30,                                        null: false
    t.string   "cpn_st",          limit: 1,                                         null: false
    t.string   "cpn_title",       limit: 2000,                                      null: false
    t.string   "cpn_cls",         limit: 1,                                         null: false
    t.string   "cpn_discnt_type", limit: 1,                                         null: false
    t.string   "vndr_cpn",        limit: 1,                                         null: false
    t.integer  "use_limit",       limit: 4,                             default: 0, null: false
    t.datetime "start_dt",                                                          null: false
    t.datetime "expiration_dt"
    t.decimal  "dscnt_value",                  precision: 20, scale: 2
    t.decimal  "dscnt_rate",                   precision: 5,  scale: 2
    t.string   "trgt_prd_cndtn",  limit: 2000
    t.string   "excld_prd_cndtn", limit: 2000
    t.string   "memo",            limit: 2000
    t.integer  "cpn_m_id",        limit: 4
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

end
