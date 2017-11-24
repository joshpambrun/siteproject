class WishlistproductController < ApplicationController

  def add
    @product = Product.find(params[:id])
    @user = User.first
    Wishlistproduct.create(quantity: 1, product: @product, user: @user)
    
    respond_to do |format|
      format.html { redirect_to ponies_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
end
