class CreateCodeMs < ActiveRecord::Migration
  def change
    create_table :code_ms do |t|
      t.string :list_name, limit:50
      t.string :code, limit:3
      t.string :sort_order, limit:3
      t.string :list_name_j, limit:50
      t.string :annotation, limit:100
      t.string :annotation_j, limit:100
      t.timestamps null: false
    end
  end
end
