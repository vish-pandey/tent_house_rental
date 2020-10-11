class CreateProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.integer :total_quantity, null: false, default: 0
      t.integer :booked_quantity, null: false, default: 0
      t.decimal :price_per_day, precision: 8, scale: 2
      t.boolean :active, null: false, default: false
      t.timestamps null: false
    end
  end
end