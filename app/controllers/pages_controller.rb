class PagesController < ApplicationController

  def home
    @categories = Category.all
    @products = Product.all
    @users = User.all
  end
  
  def about
  end
  
  def search
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = nil;
    end
  end
end
