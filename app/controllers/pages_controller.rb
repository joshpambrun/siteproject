class PagesController < ApplicationController

  def home
    @categories = Category.all
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
