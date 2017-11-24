class AddUserRefToWishlistproduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :wishlistproducts, :user, foreign_key: true
  end
end
