class CreateOutgos < ActiveRecord::Migration[5.2]
  def change
    create_table :outgos do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.date :date, null: false
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
