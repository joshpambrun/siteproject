class PagesController < ApplicationController

  def home
    @categories = Category.all
    @products = Product.all
  end
  
  def about
    @stonepage = Stonepage.where(title: "About")[0]
  end
  
  def contact
    @stonepage = Stonepage.where(title: "Contact")[0]
  end
  
  def search
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = nil;
    end
  end
end
