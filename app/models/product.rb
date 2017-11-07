class Product < ApplicationRecord
  validates :name, :description, :price, :stock: presence: true
  validates :stock, :price, :rating, numericality: true;
  belongs_to :category
end
