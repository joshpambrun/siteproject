class AddProductRefToWishlistproduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :wishlistproducts, :product, foreign_key: true
  end
end
