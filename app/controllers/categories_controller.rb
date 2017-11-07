class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:name])
    if @category == nil
      @product = nil
    elsif
      @products = Product.where(category: @category);
    end
  end
end
