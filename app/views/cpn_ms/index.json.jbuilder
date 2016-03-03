json.array!(@cpn_ms) do |cpn_m|
  json.extract! cpn_m, :id, :cpn_id, :cpn_cd, :cpn_st, :cpn_title, :cpn_cls, :con_discnt_type, :vndr_cpn, :use_limit, :start_dt, :expiration_dt, :dscnt_value, :dscnt_rate, :trgt_prd_cndtn, :excld_prd_cndtn, :memo
  json.url cpn_m_url(cpn_m, format: :json)
end
