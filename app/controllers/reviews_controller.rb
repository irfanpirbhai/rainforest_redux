class ReviewsController < ApplicationController

  before_filter :find_product

  def index
    @reviews = @product.reviews
  end

  def new
    @product = Product.find_by_id(params[:product_id])
    @review = Review.new
  end

  def create
  
  end

  def show

  end

  def destroy

  end
end

  private

  def find_product
    @product = Product.find_by_id(params[:id])
  end
