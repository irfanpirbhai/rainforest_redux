class ReviewsController < ApplicationController

  before_filter :load_product

  def index
    @reviews = @product.reviews
    # or, @reviews = Review.where(:product_id => @product.id)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    
  end

  def create

  end

  def destroy

  end

  def load_product
    @product = Product.find(params[:product_id])
  end

end
