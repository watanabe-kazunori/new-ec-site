class CreateSysSettings < ActiveRecord::Migration
  def change
    create_table :sys_settings, id: false do |t|
      t.string :company_name, limit: 50, null: false
      t.string :company_name_e, limit: 50
    end
    execute "ALTER TABLE sys_settings ADD PRIMARY KEY (company_name);" 
  end
end
