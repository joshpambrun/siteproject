class WishlistproductController < ApplicationController

  def add
    unless session[:current_user_id] == nil
      p = params.permit(:product)
      # @product = Product.find(p[:product])
      wish_list_item = Wishlistproduct.where(user: current_user, product_id: p[:product]).take
      unless wish_list_item == nil
        wish_list_item.quantity += 1
        wish_list_item.save
      else
        wish_list_item = Wishlistproduct.create(user: current_user, product_id: p[:product], quantity: 1)
      end
      
      render :json => wish_list_item
    end
  end
  
  def del
    unless session[:current_user_id] == nil
      p = params.permit(:product)
      # @product = Product.find(p[:product])
      wish_list_item = Wishlistproduct.where(user: current_user, product_id: p[:product]).take
      unless wish_list_item == nil
        if wish_list_item.quantity == 1
          wish_list_item.delete
        else
          wish_list_item.quantity -= 1
          wish_list_item.save
        end
      end
      
      render :json => wish_list_item
    end
  end
end
