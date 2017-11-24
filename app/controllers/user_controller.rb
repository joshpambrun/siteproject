class UserController < ApplicationController

  def login
    
  end
  
  def add
    p = params.permit(:product => [])
    @new_cart_item = Wishlistproduct.new(:quantity => 1, :user => User.first, :product => Product.first)
    @new_cart_item.save
    
    render :json => @new_cart_item.product
  end
  
  def del
  
  end
  
  def cart
    @cartproducts = Wishlistproduct.where(user: 1)
  end
  
end
