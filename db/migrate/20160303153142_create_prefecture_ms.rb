class CreatePrefectureMs < ActiveRecord::Migration
  def change
    create_table :prefecture_ms do |t|
      t.string :prefecture_no, limit: 2
      t.string :prefecture_name, limit:6
      t.timestamps null: false
    end
  end
end
