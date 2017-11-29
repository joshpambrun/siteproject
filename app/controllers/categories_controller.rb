class CategoriesController < ApplicationController

  def show
    @category = Category.where(name: params[:name])[0]    
    @products = Product.where(category: @category).order("name").page(params[:page]).per(2)
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
