class CategoriesController < ApplicationController

  def show
    @category = Category.where(name: params[:name])[0]
    @thing = params[:name]
    if params[:search]
      @products = Product.searchWithCategory(params[:search], @category).order("created_at DESC")
    end
  end
end
