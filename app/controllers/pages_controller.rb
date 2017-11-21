class PagesController < ApplicationController

  def home
    @categories = Category.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end
  end
  
  def about
  end
  
  def search
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end
  end
end
