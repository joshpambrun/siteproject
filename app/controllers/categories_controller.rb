class CategoriesController < ApplicationController

  def show
    @category = Category.where(name: params[:name])[0]
    @thing = params[:name]
  end
end
