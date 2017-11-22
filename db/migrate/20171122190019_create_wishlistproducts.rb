class CreateWishlistproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlistproducts do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
