class User < ApplicationRecord
  has_many :wishlistproducts
  belongs_to :province
  
  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true;
end
