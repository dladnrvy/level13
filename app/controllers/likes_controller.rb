class LikesController < ApplicationController

  def like_current_user
  user_product = Like.find_by(user_id: current_user.id)
  
  if user_product.present? 
    @like_product = Product.where(id: user_product.product_id)
  end
    
end


  def like_toggle
    like = Like.find_by(user_id: current_user.id,
    product_id: params[:product_id])
    
    if like.nil?
      Like.create(user_id: current_user.id,
      product_id: params[:product_id])
    else
      like.destroy
    end
    
  redirect_back(fallback_location: root_path)
    
  end
end
