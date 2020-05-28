class ProductController < ApplicationController

# 제품 최신순 정렬
def index
  @product = Product.all.order('id desc')
end

end
