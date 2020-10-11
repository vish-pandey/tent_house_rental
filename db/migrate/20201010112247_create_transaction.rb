class CreateTransaction < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :product, index: true
      t.references :customer, index: true
      t.integer :transaction_type, null: false, default: 0
      t.integer :quantity, null: false, default: 0
      t.integer :parent_id
      t.timestamps null: false
    end
  end
end
