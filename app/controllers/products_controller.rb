class ProductsController < ApplicationController

  def home
    @products = Product.order(:name)
  end
end
