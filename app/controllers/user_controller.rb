class UserController < ApplicationController

  def signup
    unless session[:current_user_id] == nil
      if params[:email] && params[:password]
        @user = User.where(email: params[:email])
        if @user.empty?
          @thing = "There was a problem registering that account"
          p = params.permit(:email, :password)
          user = User.create(email: p[:email], password: p[:password])
          unless user == nil
            @thing = "Account registered"
          end
        else
          @thing = "That email is already taken"
        end
      end
    end
  end
  
  def login
    user = User.where(email: params[:email], password: params[:password])
    unless user.empty?
      session[:current_user_id] = user[0].id
    end
    redirect_to home_path
  end
  
  def logout
    session[:current_user_id] = nil
    redirect_to home_path
  end

  # def add
  #   p = params.permit(:product => [])
  #   @new_cart_item = Wishlistproduct.new(:quantity => 1, :user => User.first, :product => Product.first)
  #   @new_cart_item.save
  #   
  #   render :json => @new_cart_item.product
  # end
  # 
  # def del
  # 
  # end
  
  def show
    @wishlist = Wishlistproduct.where(user: session[:current_user_id])
  end
  
  def checkout
    @provinces = Province.all
    @wishlist = Wishlistproduct.where(user: session[:current_user_id])
    @total = 0
    @wishlist.each do |wish|
      @total += (wish.product.price * wish.quantity)
    end
    @total_tax = 0
    unless @current_user.province.hst != nil
      @total_tax = @total * @current_user.province.pst
    else
      @total_tax = @total * @current_user.province.hst
    end
    @total_with_tax = @total + @total_tax
  end
  
  def change_address
    if params[:province] && params[:address]
      if params[:province] != "" && params[:address] != ""
        p = params.permit(:address, :province)
        unless p[:province].to_i > 13
          @current_user.province = Province.find(p[:province])
          @current_user.address = p[:address]
          @current_user.save
        end
      end
    end
    redirect_to checkout_path
  end
end
