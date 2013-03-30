class ReviewsController < ApplicationController

  before_filter :find_product

  def index
    @reviews = @product.reviews
  end

  def new
  end

  def create
    @product = Product.find_by_id(params[:product_id])
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    @review.user_id = session[:user_id]
    if @review.save
      flash[:notice] = "Thanks for the review!"
      redirect_to @product
    else 
      flash[:error] = "There was an error saving your review"
      redirect_to @product
    end
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
