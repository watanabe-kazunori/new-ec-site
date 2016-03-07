class CreateCurrencyMs < ActiveRecord::Migration
  def change
    create_table :currency_ms do |t|
    	t.string :currency_cd, limit: 4
    	t.string :currency_sign, limit: 2
    	t.string :currency_name, limit: 50
    	t.string :currency_name_e, limit: 50
    	t.string :currency_unit, limit: 20
    	t.string :currency_unit_e, limit: 20
        t.timestamps null: true
    end
  end
end
