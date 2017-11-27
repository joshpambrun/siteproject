class User < ApplicationRecord
  has_many :wishlistproducts
  
  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true;
end
