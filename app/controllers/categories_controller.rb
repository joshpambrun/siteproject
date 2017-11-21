class CategoriesController < ApplicationController

  def show
    @category = Category.where(name: params[:name])[0]
  end
end
