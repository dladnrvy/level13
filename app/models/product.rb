class Product < ApplicationRecord
  self.table_name = "Product"
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
