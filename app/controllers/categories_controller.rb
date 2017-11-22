class CategoriesController < ApplicationController

  def show
    @category = Category.where(name: params[:name])[0]
  end
  
  def search
    @category = Category.where(name: params[:name])[0]
    if params[:search]
      @products = Product.searchWithCategory(params[:search], @category).order("created_at DESC")
    else
      @products = nil;
    end
  end
end
