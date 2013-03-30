class ReviewsController < ApplicationController

<<<<<<< HEAD
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
=======
  before_filter :find_product

  def index
  end

  def new
  end

  def create
    @review = @product.reviews.build(params[:review])
    @review.user = current_user

    # or,
    # @review = Review.new
    # @review.comment = params[:review][:comment]
    # @review.product_id = params[:product_id]
    # @review.user_id = session[:user_id]
    
    if @review.save
      flash[:notice] = "Thanks for the review!"
      redirect_to @product
    else 
      flash[:error] = "There was an error saving your review"
      redirect_to @product
    end
  end

  def show
>>>>>>> wtony

  end

  def destroy

  end
<<<<<<< HEAD

  def load_product
    @product = Product.find(params[:product_id])
  end

end
=======
end

  private

  def find_product
    @product = Product.find_by_id(params[:product_id])
  end
>>>>>>> wtony
