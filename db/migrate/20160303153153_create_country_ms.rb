class CreateCountryMs < ActiveRecord::Migration
  def change
    create_table :country_ms do |t|
      t.string :country_cd, limit: 4
      t.string :country_name, limit: 50
      t.string :country_name_e, limit: 50
      t.string :currency_cd, limit: 4
      t.timestamps null: true
    end
  end
end
