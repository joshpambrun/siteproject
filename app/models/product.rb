class Product < ApplicationRecord
  validates :name, :description, :price, :stock: presence: true
  validates :stock, :price, :sale_price, :rating, numericality: true;
  belongs_to :category
end
