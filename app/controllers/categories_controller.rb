class CategoriesController < ApplicationController

  def create
    @category = Category.new(category_params)
  end
end
