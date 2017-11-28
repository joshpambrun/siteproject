class CreateOrderproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :orderproducts do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
