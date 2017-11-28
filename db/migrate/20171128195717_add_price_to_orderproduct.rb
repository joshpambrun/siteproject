class AddPriceToOrderproduct < ActiveRecord::Migration[5.1]
  def change
    add_column :orderproducts, :price, :decimal
  end
end
