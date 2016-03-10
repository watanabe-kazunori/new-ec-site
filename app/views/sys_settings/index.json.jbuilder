json.array!(@sys_settings) do |sys_setting|
  json.extract! sys_setting, :id, :company_name, :company_name
  json.url sys_setting_url(sys_setting, format: :json)
end
