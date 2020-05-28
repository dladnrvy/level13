class User < ApplicationRecord
 has_many :likes
 has_many :liked_products, through: :likes, source: :product
 
 def is_like?(product)
   Like.find_by(user_id: self.id, product_id: product.id).present?
 end
end
