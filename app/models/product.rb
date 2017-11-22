class Product < ApplicationRecord
  validates :name, :description, :price, :stock, presence: true
  validates :stock, :price, :sale_price, :rating, numericality: true;
  belongs_to :category
  has_many :wishlistproducts
  
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    #where("description LIKE ?", "%#{search}%")
  end
  
  def self.searchWithCategory(search, category)
    where(category: category).where("name LIKE ?", "%#{search}%")
  end
end
